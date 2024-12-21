use std::ptr;
use std::time::SystemTime;
use std::slice;
use std::cmp::min;
use std::mem::MaybeUninit;

extern crate mbedtls;
use mbedtls::ssl::{Context as MbedtlsSslContext, Config as MbedtlsSslConfig, Ciphersuite};
use mbedtls::x509::Certificate;
use mbedtls::time::Time;

fn ssl_parse_server_hello(ssl: &mut MbedtlsSslContext) -> Result<(), i32> {
    let mut ret: i32;
    let mut i: usize;
    let mut n: usize;
    let mut ext_len: usize;
    let mut buf: &[u8];
    let mut ext: &[u8];
    let mut comp: u8;
    let mut renegotiation_info_seen = false;
    let mut handshake_failure = false;
    let mut suite_info: Option<&Ciphersuite>;

    println!("=> parse server hello");

    ret = ssl.read_record(true)?;
    if ret != 0 {
        println!("mbedtls_ssl_read_record returned {}", ret);
        return Err(ret);
    }

    buf = ssl.in_msg();
    if ssl.in_msgtype() != 22 {
        if ssl.renego_status() == 1 {
            ssl.renego_records_seen += 1;
            if ssl.conf().renego_max_records >= 0 && ssl.renego_records_seen > ssl.conf().renego_max_records {
                println!("renegotiation requested, but not honored by server");
                return Err(-0x7700);
            }
            println!("non-handshake message during renegotiation");
            ssl.keep_current_message = true;
            return Err(-0x6B00);
        }
        println!("bad server hello message");
        ssl.send_alert_message(2, 10)?;
        return Err(-0x7700);
    }

    if ssl.conf().transport == 1 {
        if buf[0] == 3 {
            println!("received hello verify request");
            println!("<= parse server hello");
            return ssl_parse_hello_verify_request(ssl);
        } else {
            ssl.handshake().verify_cookie = None;
            ssl.handshake().verify_cookie_len = 0;
        }
    }

    if ssl.in_hslen() < 38 + mbedtls_ssl_hs_hdr_len(ssl) || buf[0] != 2 {
        println!("bad server hello message");
        ssl.send_alert_message(2, 50)?;
        return Err(-0x7980);
    }

    buf = &buf[mbedtls_ssl_hs_hdr_len(ssl)..];
    println!("server hello, version: {:?}", &buf[0..2]);
    ssl.read_version(&mut ssl.major_ver, &mut ssl.minor_ver, ssl.conf().transport, &buf[0..2]);

    if ssl.major_ver < ssl.conf().min_major_ver || ssl.minor_ver < ssl.conf().min_minor_ver ||
       ssl.major_ver > ssl.conf().max_major_ver || ssl.minor_ver > ssl.conf().max_minor_ver {
        println!("server version out of bounds - min: [{}, {}], server: [{}, {}], max: [{}, {}]",
                 ssl.conf().min_major_ver, ssl.conf().min_minor_ver,
                 ssl.major_ver, ssl.minor_ver,
                 ssl.conf().max_major_ver, ssl.conf().max_minor_ver);
        ssl.send_alert_message(2, 70)?;
        return Err(-0x6E80);
    }

    println!("server hello, current time: {}", u32::from_be_bytes([buf[2], buf[3], buf[4], buf[5]]));
    ssl.handshake().randbytes[32..64].copy_from_slice(&buf[2..34]);
    n = buf[34] as usize;
    println!("server hello, random bytes: {:?}", &buf[2..34]);

    if n > 32 {
        println!("bad server hello message");
        ssl.send_alert_message(2, 50)?;
        return Err(-0x7980);
    }

    if ssl.in_hslen() > mbedtls_ssl_hs_hdr_len(ssl) + 39 + n {
        ext_len = ((buf[38 + n] as usize) << 8) | (buf[39 + n] as usize);
        if (ext_len > 0 && ext_len < 4) || ssl.in_hslen() != mbedtls_ssl_hs_hdr_len(ssl) + 40 + n + ext_len {
            println!("bad server hello message");
            ssl.send_alert_message(2, 50)?;
            return Err(-0x7980);
        }
    } else if ssl.in_hslen() == mbedtls_ssl_hs_hdr_len(ssl) + 38 + n {
        ext_len = 0;
    } else {
        println!("bad server hello message");
        ssl.send_alert_message(2, 50)?;
        return Err(-0x7980);
    }

    i = ((buf[35 + n] as usize) << 8) | (buf[36 + n] as usize);
    comp = buf[37 + n];
    if comp != 0 {
        println!("server hello, bad compression: {}", comp);
        ssl.send_alert_message(2, 47)?;
        return Err(-0x7080);
    }

    suite_info = mbedtls_ssl_ciphersuite_from_id(i);
    if suite_info.is_none() {
        println!("ciphersuite info for {:04x} not found", i);
        ssl.send_alert_message(2, 80)?;
        return Err(-0x7100);
    }

    ssl.optimize_checksum(suite_info.unwrap());
    println!("server hello, session id len.: {}", n);
    println!("server hello, session id: {:?}", &buf[35..35 + n]);

    if ssl.handshake().resume == 0 || n == 0 || ssl.renego_status() != 0 ||
       ssl.session_negotiate().ciphersuite != i || ssl.session_negotiate().compression != comp ||
       ssl.session_negotiate().id_len != n || ssl.session_negotiate().id != &buf[35..35 + n] {
        ssl.state += 1;
        ssl.handshake().resume = 0;
        ssl.session_negotiate().start = SystemTime::now().duration_since(SystemTime::UNIX_EPOCH).unwrap().as_secs() as u32;
        ssl.session_negotiate().ciphersuite = i;
        ssl.session_negotiate().compression = comp;
        ssl.session_negotiate().id_len = n;
        ssl.session_negotiate().id.copy_from_slice(&buf[35..35 + n]);
    } else {
        ssl.state = MBEDTLS_SSL_SERVER_CHANGE_CIPHER_SPEC;
        ret = ssl.derive_keys()?;
        if ret != 0 {
            println!("mbedtls_ssl_derive_keys returned {}", ret);
            ssl.send_alert_message(2, 80)?;
            return Err(ret);
        }
    }

    println!("{} session has been resumed", if ssl.handshake().resume != 0 { "a" } else { "no" });
    println!("server hello, chosen ciphersuite: {:04x}", i);
    println!("server hello, compress alg.: {}", buf[37 + n]);

    i = 0;
    while ssl.conf().ciphersuite_list[ssl.minor_ver][i] != 0 {
        if ssl.conf().ciphersuite_list[ssl.minor_ver][i] == ssl.session_negotiate().ciphersuite {
            break;
        }
        i += 1;
    }

    if ssl.conf().ciphersuite_list[ssl.minor_ver][i] == 0 {
        println!("bad server hello message");
        ssl.send_alert_message(2, 47)?;
        return Err(-0x7980);
    }

    suite_info = mbedtls_ssl_ciphersuite_from_id(ssl.session_negotiate().ciphersuite);
    if ssl_validate_ciphersuite(suite_info.unwrap(), ssl, ssl.minor_ver, ssl.minor_ver) != 0 {
        println!("bad server hello message");
        ssl.send_alert_message(2, 47)?;
        return Err(-0x7980);
    }

    println!("server hello, chosen ciphersuite: {}", suite_info.unwrap().name);
    if comp != 0 {
        println!("bad server hello message");
        ssl.send_alert_message(2, 47)?;
        return Err(-0x7980);
    }

    ssl.session_negotiate().compression = comp;
    ext = &buf[40 + n..];
    println!("server hello, total extension length: {}", ext_len);

    while ext_len > 0 {
        let ext_id = ((ext[0] as usize) << 8) | (ext[1] as usize);
        let ext_size = ((ext[2] as usize) << 8) | (ext[3] as usize);

        if ext_size + 4 > ext_len {
            println!("bad server hello message");
            ssl.send_alert_message(2, 50)?;
            return Err(-0x7980);
        }

        match ext_id {
            0xFF01 => {
                println!("found renegotiation extension");
                renegotiation_info_seen = true;
                ret = ssl_parse_renegotiation_info00(ssl, &ext[4..4 + ext_size])?;
                if ret != 0 {
                    return Err(ret);
                }
            }
            1 => {
                println!("found max_fragment_length extension");
                ret = ssl_parse_max_fragment_length_ext00(ssl, &ext[4..4 + ext_size])?;
                if ret != 0 {
                    return Err(ret);
                }
            }
            4 => {
                println!("found truncated_hmac extension");
                ret = ssl_parse_truncated_hmac_ext00(ssl, &ext[4..4 + ext_size])?;
                if ret != 0 {
                    return Err(ret);
                }
            }
            22 => {
                println!("found encrypt_then_mac extension");
                ret = ssl_parse_encrypt_then_mac_ext00(ssl, &ext[4..4 + ext_size])?;
                if ret != 0 {
                    return Err(ret);
                }
            }
            0x0017 => {
                println!("found extended_master_secret extension");
                ret = ssl_parse_extended_ms_ext00(ssl, &ext[4..4 + ext_size])?;
                if ret != 0 {
                    return Err(ret);
                }
            }
            35 => {
                println!("found session_ticket extension");
                ret = ssl_parse_session_ticket_ext00(ssl, &ext[4..4 + ext_size])?;
                if ret != 0 {
                    return Err(ret);
                }
            }
            11 => {
                println!("found supported_point_formats extension");
                ret = ssl_parse_supported_point_formats_ext(ssl, &ext[4..4 + ext_size])?;
                if ret != 0 {
                    return Err(ret);
                }
            }
            16 => {
                println!("found alpn extension");
                ret = ssl_parse_alpn_ext00(ssl, &ext[4..4 + ext_size])?;
                if ret != 0 {
                    return Err(ret);
                }
            }
            _ => {
                println!("unknown extension found: {} (ignoring)", ext_id);
            }
        }

        ext_len -= 4 + ext_size;
        ext = &ext[4 + ext_size..];
        if ext_len > 0 && ext_len < 4 {
            println!("bad server hello message");
            return Err(-0x7980);
        }
    }

    if ssl.secure_renegotiation == 0 && ssl.conf().allow_legacy_renegotiation == 2 {
        println!("legacy renegotiation, breaking off handshake");
        handshake_failure = true;
    } else if ssl.renego_status() == 1 && ssl.secure_renegotiation == 1 && !renegotiation_info_seen {
        println!("renegotiation_info extension missing (secure)");
        handshake_failure = true;
    } else if ssl.renego_status() == 1 && ssl.secure_renegotiation == 0 && ssl.conf().allow_legacy_renegotiation == 0 {
        println!("legacy renegotiation not allowed");
        handshake_failure = true;
    } else if ssl.renego_status() == 1 && ssl.secure_renegotiation == 0 && renegotiation_info_seen {
        println!("renegotiation_info extension present (legacy)");
        handshake_failure = true;
    }

    if handshake_failure {
        ssl.send_alert_message(2, 40)?;
        return Err(-0x7980);
    }

    println!("<= parse server hello");
    Ok(())
}
