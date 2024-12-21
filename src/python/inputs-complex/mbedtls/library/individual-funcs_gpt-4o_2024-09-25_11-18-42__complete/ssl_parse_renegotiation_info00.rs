use std::cmp::Ordering;
use std::ptr;

#[derive(Debug)]
struct MbedtlsSslContext {
    renego_status: i32,
    verify_data_len: usize,
    own_verify_data: [u8; 12],
    peer_verify_data: [u8; 12],
    secure_renegotiation: i32,
}

fn mbedtls_ssl_safer_memcmp(a: &[u8], b: &[u8], len: usize) -> i32 {
    if a.len() < len || b.len() < len {
        return -1;
    }
    for i in 0..len {
        if a[i] != b[i] {
            return 1;
        }
    }
    0
}

fn mbedtls_debug_print_msg(ssl: &MbedtlsSslContext, level: i32, file: &str, line: i32, format: &str) {
    println!("Debug: [{}:{}] {} - {:?}", file, line, format, ssl);
}

fn mbedtls_ssl_send_alert_message(ssl: &mut MbedtlsSslContext, level: u8, message: u8) -> i32 {
    println!("Alert: level {}, message {}", level, message);
    0
}

fn ssl_parse_renegotiation_info00(ssl: &mut MbedtlsSslContext, buf: &[u8], len: usize) -> i32 {
    if ssl.renego_status != 0 {
        if len != 1 + ssl.verify_data_len * 2
            || buf[0] as usize != ssl.verify_data_len * 2
            || mbedtls_ssl_safer_memcmp(&buf[1..], &ssl.own_verify_data, ssl.verify_data_len) != 0
            || mbedtls_ssl_safer_memcmp(&buf[1 + ssl.verify_data_len..], &ssl.peer_verify_data, ssl.verify_data_len) != 0
        {
            mbedtls_debug_print_msg(ssl, 1, "ssl_cli.c", 1351, "non-matching renegotiation info");
            mbedtls_ssl_send_alert_message(ssl, 2, 40);
            return -0x7980;
        }
    } else {
        if len != 1 || buf[0] != 0x00 {
            mbedtls_debug_print_msg(ssl, 1, "ssl_cli.c", 1365, "non-zero length renegotiation info");
            mbedtls_ssl_send_alert_message(ssl, 2, 40);
            return -0x7980;
        }
        ssl.secure_renegotiation = 1;
    }
    0
}

fn main() {
    let mut ssl = MbedtlsSslContext {
        renego_status: 0,
        verify_data_len: 12,
        own_verify_data: [0; 12],
        peer_verify_data: [0; 12],
        secure_renegotiation: 0,
    };

    let buf = [0x00];
    let len = buf.len();

    let result = ssl_parse_renegotiation_info00(&mut ssl, &buf, len);
    println!("Result: {}", result);
}
