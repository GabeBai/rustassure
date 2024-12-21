extern crate mbedtls;

use mbedtls::ssl::{Context as MbedtlsSslContext, Config as MbedtlsSslConfig, Session as MbedtlsSslSession};
use mbedtls::debug::debug_print_msg;

fn ssl_parse_encrypt_then_mac_ext(ssl: &mut MbedtlsSslContext, buf: &[u8]) -> Result<(), i32> {
    if !buf.is_empty() {
        debug_print_msg(ssl, 1, "ssl_srv.c", 574, "bad client hello message");
        ssl.send_alert_message(2, 50)?;
        return Err(-0x7900);
    }

    if ssl.conf().encrypt_then_mac == 1 && ssl.minor_ver() != 0 {
        ssl.session_negotiate_mut().set_encrypt_then_mac(1);
    }

    Ok(())
}
