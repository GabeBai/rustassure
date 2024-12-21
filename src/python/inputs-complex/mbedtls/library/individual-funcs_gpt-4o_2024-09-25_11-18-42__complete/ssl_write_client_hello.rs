use std::ptr;
use std::slice;
use std::time::SystemTime;

#[derive(Debug)]
struct MbedtlsSslContext {
    conf: MbedtlsSslConfig,
    major_ver: u8,
    minor_ver: u8,
    renego_status: u8,
    handshake: MbedtlsSslHandshakeParams,
    session_negotiate: MbedtlsSslSession,
    out_msg: Vec<u8>,
    out_msglen: usize,
    out_msgtype: u8,
    state: u8,
}

#[derive(Debug)]
struct MbedtlsSslConfig {
    f_rng: Option<fn(&mut [u8]) -> i32>,
    p_rng: *mut std::ffi::c_void,
    min_major_ver: u8,
    min_minor_ver: u8,
    max_major_ver: u8,
    max_minor_ver: u8,
    transport: u8,
    ciphersuite_list: Vec<Vec<i32>>,
    fallback: u8,
}

#[derive(Debug)]
struct MbedtlsSslHandshakeParams {
    randbytes: [u8; 32],
    resume: u8,
    verify_cookie: Option<Vec<u8>>,
    verify_cookie_len: usize,
}

#[derive(Debug)]
struct MbedtlsSslSession {
    id_len: usize,
    id: [u8; 32],
    ticket: Option<Vec<u8>>,
    ticket_len: usize,
}

#[derive(Debug)]
struct MbedtlsSslCiphersuite {
    name: &'static str,
}

fn mbedtls_ssl_ciphersuite_from_id(id: i32) -> Option<MbedtlsSslCiphersuite> {
    // Dummy implementation
    Some(MbedtlsSslCiphersuite { name: "dummy" })
}

fn mbedtls_ssl_ciphersuite_uses_ec(info: &MbedtlsSslCiphersuite) -> bool {
    // Dummy implementation
    false
}

fn mbedtls_ssl_write_version(major: u8, minor: u8, transport: u8, buf: &mut [u8]) {
    buf[0] = major;
    buf[1] = minor;
}

fn ssl_generate_random(ssl: &mut MbedtlsSslContext) -> i32 {
    // Dummy implementation
    let now = SystemTime::now();
    let duration = now.duration_since(SystemTime::UNIX_EPOCH).unwrap();
    let random_bytes = duration.as_secs().to_le_bytes();
    ssl.handshake.randbytes[..8].copy_from_slice(&random_bytes);
    0
}

fn ssl_write_client_hello(ssl: &mut MbedtlsSslContext) -> i32 {
    let mut ret = -0x006E;
    let mut i: usize;
    let mut n: usize;
    let mut olen: usize;
    let mut ext_len = 0;
    let mut buf: &mut [u8];
    let mut p: &mut [u8];
    let mut q: &mut [u8];
    let end: &[u8];
    let mut offer_compress: u8;
    let mut ciphersuites: &[i32];
    let mut ciphersuite_info: Option<MbedtlsSslCiphersuite>;
    let mut uses_ec = false;

    println!("=> write client hello");

    if ssl.conf.f_rng.is_none() {
        println!("no RNG provided");
        return -0x7400;
    }

    if ssl.renego_status == 0 {
        ssl.major_ver = ssl.conf.min_major_ver;
        ssl.minor_ver = ssl.conf.min_minor_ver;
    }

    if ssl.conf.max_major_ver == 0 {
        println!("configured max major version is invalid, consider using mbedtls_ssl_config_defaults()");
        return -0x7100;
    }

    buf = &mut ssl.out_msg;
    end = &buf[16384..];
    p = &mut buf[4..];

    mbedtls_ssl_write_version(ssl.conf.max_major_ver, ssl.conf.max_minor_ver, ssl.conf.transport, p);
    p = &mut p[2..];

    println!("client hello, max version: [{}:{}]", buf[4], buf[5]);

    if (ret = ssl_generate_random(ssl)) != 0 {
        println!("ssl_generate_random: {}", ret);
        return ret;
    }

    p[..32].copy_from_slice(&ssl.handshake.randbytes);
    println!("client hello, random bytes: {:?}", &p[..32]);
    p = &mut p[32..];

    n = ssl.session_negotiate.id_len;
    if n < 16 || n > 32 || ssl.renego_status != 0 || ssl.handshake.resume == 0 {
        n = 0;
    }

    if ssl.renego_status == 0 {
        if let Some(ticket) = &ssl.session_negotiate.ticket {
            if !ticket.is_empty() {
                if let Some(f_rng) = ssl.conf.f_rng {
                    ret = f_rng(&mut ssl.session_negotiate.id);
                    if ret != 0 {
                        return ret;
                    }
                    ssl.session_negotiate.id_len = n = 32;
                }
            }
        }
    }

    p[0] = n as u8;
    p = &mut p[1..];
    p[..n].copy_from_slice(&ssl.session_negotiate.id[..n]);
    p = &mut p[n..];

    println!("client hello, session id len.: {}", n);
    println!("client hello, session id: {:?}", &buf[39..39 + n]);

    if ssl.conf.transport == 1 {
        if ssl.handshake.verify_cookie.is_none() {
            println!("no verify cookie to send");
            p[0] = 0;
            p = &mut p[1..];
        } else {
            let cookie = ssl.handshake.verify_cookie.as_ref().unwrap();
            println!("client hello, cookie: {:?}", cookie);
            p[0] = ssl.handshake.verify_cookie_len as u8;
            p = &mut p[1..];
            p[..ssl.handshake.verify_cookie_len].copy_from_slice(cookie);
            p = &mut p[ssl.handshake.verify_cookie_len..];
        }
    }

    ciphersuites = &ssl.conf.ciphersuite_list[ssl.minor_ver as usize];
    n = 0;
    q = p;
    p = &mut p[2..];

    for &ciphersuite in ciphersuites {
        ciphersuite_info = mbedtls_ssl_ciphersuite_from_id(ciphersuite);
        if ciphersuite_info.is_none() {
            continue;
        }
        let ciphersuite_info = ciphersuite_info.unwrap();
        println!("client hello, add ciphersuite: {:04x} ({})", ciphersuite, ciphersuite_info.name);
        uses_ec |= mbedtls_ssl_ciphersuite_uses_ec(&ciphersuite_info);
        p[0] = (ciphersuite >> 8) as u8;
        p[1] = ciphersuite as u8;
        p = &mut p[2..];
        n += 1;
    }

    println!("client hello, got {} ciphersuites (excluding SCSVs)", n);

    if ssl.renego_status == 0 {
        println!("adding EMPTY_RENEGOTIATION_INFO_SCSV");
        p[0] = 0xFF;
        p[1] = 0xFF;
        p = &mut p[2..];
        n += 1;
    }

    if ssl.conf.fallback == 1 {
        println!("adding FALLBACK_SCSV");
        p[0] = 0x56;
        p[1] = 0x00;
        p = &mut p[2..];
        n += 1;
    }

    q[0] = (n >> 7) as u8;
    q[1] = (n << 1) as u8;

    offer_compress = 0;
    if ssl.conf.transport == 1 {
        offer_compress = 0;
    }

    if offer_compress != 0 {
        println!("client hello, compress len.: {}", 2);
        println!("client hello, compress alg.: {} {}", 1, 0);
        p[0] = 2;
        p[1] = 1;
        p[2] = 0;
        p = &mut p[3..];
    } else {
        println!("client hello, compress len.: {}", 1);
        println!("client hello, compress alg.: {}", 0);
        p[0] = 1;
        p[1] = 0;
        p = &mut p[2..];
    }

    // Extensions would be written here...

    println!("client hello, total extension length: {}", ext_len);

    if ext_len > 0 {
        p[0] = ((ext_len >> 8) & 0xFF) as u8;
        p[1] = (ext_len & 0xFF) as u8;
        p = &mut p[2..];
        p = &mut p[ext_len..];
    }

    ssl.out_msglen = p.as_ptr() as usize - buf.as_ptr() as usize;
    ssl.out_msgtype = 22;
    ssl.out_msg[0] = 1;
    ssl.state += 1;

    if ssl.conf.transport == 1 {
        // mbedtls_ssl_send_flight_completed(ssl);
    }

    // if (ret = mbedtls_ssl_write_handshake_msg(ssl)) != 0 {
    //     println!("mbedtls_ssl_write_handshake_msg: {}", ret);
    //     return ret;
    // }

    // if ssl.conf.transport == 1 && (ret = mbedtls_ssl_flight_transmit(ssl)) != 0 {
    //     println!("mbedtls_ssl_flight_transmit: {}", ret);
    //     return ret;
    // }

    println!("<= write client hello");
    0
}

fn main() {
    // Example usage
    let mut ssl = MbedtlsSslContext {
        conf: MbedtlsSslConfig {
            f_rng: Some(|buf| {
                let now = SystemTime::now();
                let duration = now.duration_since(SystemTime::UNIX_EPOCH).unwrap();
                let random_bytes = duration.as_secs().to_le_bytes();
                buf[..8].copy_from_slice(&random_bytes);
                0
            }),
            p_rng: ptr::null_mut(),
            min_major_ver: 3,
            min_minor_ver: 3,
            max_major_ver: 3,
            max_minor_ver: 3,
            transport: 0,
            ciphersuite_list: vec![vec![0x1301, 0x1302, 0x1303]],
            fallback: 0,
        },
        major_ver: 0,
        minor_ver: 0,
        renego_status: 0,
        handshake: MbedtlsSslHandshakeParams {
            randbytes: [0; 32],
            resume: 0,
            verify_cookie: None,
            verify_cookie_len: 0,
        },
        session_negotiate: MbedtlsSslSession {
            id_len: 0,
            id: [0; 32],
            ticket: None,
            ticket_len: 0,
        },
        out_msg: vec![0; 16384],
        out_msglen: 0,
        out_msgtype: 0,
        state: 0,
    };

    let ret = ssl_write_client_hello(&mut ssl);
    println!("ssl_write_client_hello returned: {}", ret);
}
