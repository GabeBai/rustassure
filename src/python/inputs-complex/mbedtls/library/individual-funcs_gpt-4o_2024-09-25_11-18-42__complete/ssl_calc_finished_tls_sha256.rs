use ring::digest::{Context, SHA256};
use rustls::internal::msgs::handshake::HandshakeHash;
use rustls::internal::msgs::message::Message;
use std::ptr;

fn ssl_calc_finished_tls_sha256(ssl: &mut mbedtls_ssl_context, buf: &mut [u8], from: i32) {
    let len = 12;
    let sender = if from == 0 {
        "client finished"
    } else {
        "server finished"
    };
    let mut padbuf = [0u8; 32];
    let mut sha256 = Context::new(&SHA256);
    let session = if ssl.session_negotiate.is_some() {
        ssl.session_negotiate.as_ref().unwrap()
    } else {
        ssl.session.as_ref().unwrap()
    };

    mbedtls_debug_print_msg(ssl, 2, "ssl_tls.c", 3170, "=> calc  finished tls sha256");
    sha256.clone_from(&ssl.handshake.fin_sha256);
    mbedtls_debug_print_buf(ssl, 4, "ssl_tls.c", 3182, "finished sha2 state", &sha256.state, sha256.state.len());
    sha256.finish(&mut padbuf);
    ssl.handshake.tls_prf(&session.master, 48, sender, &padbuf, 32, buf, len);
    mbedtls_debug_print_buf(ssl, 3, "ssl_tls.c", 3192, "calc finished result", buf, len);
    mbedtls_platform_zeroize(&mut padbuf);
    mbedtls_debug_print_msg(ssl, 2, "ssl_tls.c", 3196, "<= calc  finished");
}

// Dummy implementations for the missing functions and structs
fn mbedtls_debug_print_msg(_ssl: &mbedtls_ssl_context, _level: i32, _file: &str, _line: i32, _format: &str) {
    // Implement the debug print function
}

fn mbedtls_debug_print_buf(_ssl: &mbedtls_ssl_context, _level: i32, _file: &str, _line: i32, _text: &str, _buf: &[u8], _len: usize) {
    // Implement the debug print buffer function
}

fn mbedtls_platform_zeroize(buf: &mut [u8]) {
    for byte in buf.iter_mut() {
        *byte = 0;
    }
}

// Dummy struct definitions
struct mbedtls_ssl_context {
    session_negotiate: Option<mbedtls_ssl_session>,
    session: Option<mbedtls_ssl_session>,
    handshake: mbedtls_ssl_handshake_params,
}

struct mbedtls_ssl_session {
    master: [u8; 48],
}

struct mbedtls_ssl_handshake_params {
    fin_sha256: Context,
    tls_prf: fn(&[u8], usize, &str, &[u8], usize, &mut [u8], usize),
}
