extern crate mbedtls;

use mbedtls::ssl::{Context as SslContext, Config as SslConfig, Handshake};
use mbedtls::debug::{debug_print_msg, debug_print_ret};

pub fn mbedtls_ssl_start_renegotiation(ssl: &mut SslContext) -> Result<(), i32> {
    let ret = -0x006E;
    debug_print_msg(ssl, 2, "ssl_tls.rs", 5743, "=> renegotiate");

    if let Err(e) = ssl.handshake_init() {
        return Err(e);
    }

    if ssl.conf().transport == 1 && ssl.renego_status == 3 {
        if ssl.conf().endpoint == 1 {
            ssl.handshake_mut().out_msg_seq = 1;
        } else {
            ssl.handshake_mut().in_msg_seq = 1;
        }
    }

    ssl.set_state(mbedtls::ssl::State::HelloRequest);
    ssl.set_renego_status(1);

    if let Err(e) = ssl.handshake() {
        debug_print_ret(ssl, 1, "ssl_tls.rs", 5766, "mbedtls_ssl_handshake", e);
        return Err(e);
    }

    debug_print_msg(ssl, 2, "ssl_tls.rs", 5770, "<= renegotiate");
    Ok(())
}
