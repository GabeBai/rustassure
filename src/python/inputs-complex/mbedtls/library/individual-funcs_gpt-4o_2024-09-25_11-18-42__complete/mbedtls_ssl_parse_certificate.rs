// Add this line if you are using Rust 2015 edition
// extern crate mbedtls;

use mbedtls::ssl::{Context as MbedtlsSslContext, Config as MbedtlsSslConfig};
use mbedtls::x509::Certificate as MbedtlsX509Crt;

fn ssl_clear_peer_cert(session: &mut mbedtls::ssl::Session) {
    // Your function implementation here
}

fn mbedtls_ssl_parse_certificate(ssl: &mut mbedtls::ssl::Context) -> i32 {
    let mut ret = 0;
    let crt_expected;
    let authmode = if ssl.handshake.sni_authmode != 3 {
        ssl.handshake.sni_authmode
    } else {
        ssl.conf.authmode
    };
    let rs_ctx = None;
    let mut chain: Option<MbedtlsX509Crt> = None;

    mbedtls::debug::print_msg(ssl, 2, "ssl_tls.c", 2725, "=> parse certificate");
    crt_expected = ssl_parse_certificate_coordinate(ssl, authmode);
    if crt_expected == 1 {
        mbedtls::debug::print_msg(ssl, 2, "ssl_tls.c", 2730, "<= skip parse certificate");
        return ret;
    }
    if let Err(e) = mbedtls::ssl::read_record(ssl, true) {
        mbedtls::debug::print_ret(ssl, 1, "ssl_tls.c", 2748, "mbedtls_ssl_read_record", e);
        return e;
    }
    if ssl_srv_check_client_no_crt_notification(ssl) == 0 {
        ssl.session_negotiate.verify_result = 0x40;
        if authmode != 1 {
            return -0x7480;
        }
        return ret;
    }
    ssl_clear_peer_cert(&mut ssl.session_negotiate);
    chain = Some(MbedtlsX509Crt::new());
    if chain.is_none() {
        mbedtls::debug::print_msg(ssl, 1, "ssl_tls.c", 2772, "alloc failed");
        mbedtls::ssl::send_alert_message(ssl, 2, 80);
        return -0x7F00;
    }
    if let Some(ref mut chain) = chain {
        mbedtls::x509::crt_init(chain);
        ret = ssl_parse_certificate_chain(ssl, chain);
        if ret != 0 {
            return ret;
        }
        ret = ssl_parse_certificate_verify(ssl, authmode, chain, rs_ctx);
        if ret != 0 {
            return ret;
        }
        ssl.session_negotiate.peer_cert = Some(chain.clone());
    }
    mbedtls::debug::print_msg(ssl, 2, "ssl_tls.c", 2836, "<= parse certificate");

    if ret == 0 {
        ssl.state += 1;
    }
    if let Some(chain) = chain {
        mbedtls::x509::crt_free(&chain);
    }
    ret
}
