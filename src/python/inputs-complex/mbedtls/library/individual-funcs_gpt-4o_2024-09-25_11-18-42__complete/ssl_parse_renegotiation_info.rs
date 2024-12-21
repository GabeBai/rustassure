use std::ffi::CString;
use std::ptr;
use std::slice;

extern "C" {
    fn mbedtls_debug_print_msg(ssl: *const mbedtls_ssl_context, level: i32, file: *const i8, line: i32, format: *const i8, ...);
    fn mbedtls_ssl_send_alert_message(ssl: *mut mbedtls_ssl_context, level: u8, message: u8) -> i32;
    fn mbedtls_ssl_safer_memcmp(a: *const u8, b: *const u8, len: usize) -> i32;
}

#[repr(C)]
struct mbedtls_ssl_context {
    renego_status: i32,
    verify_data_len: usize,
    peer_verify_data: [u8; 12],
    secure_renegotiation: i32,
}

const MBEDTLS_ERR_SSL_BAD_HS_SERVER_HELLO: i32 = -0x7900;

fn ssl_parse_renegotiation_info(ssl: &mut mbedtls_ssl_context, buf: &[u8]) -> i32 {
    if ssl.renego_status != 0 {
        if buf.len() != 1 + ssl.verify_data_len || buf[0] as usize != ssl.verify_data_len || unsafe {
            mbedtls_ssl_safer_memcmp(buf.as_ptr().add(1), ssl.peer_verify_data.as_ptr(), ssl.verify_data_len) != 0
        } {
            let file = CString::new("ssl_srv.c").unwrap();
            let msg = CString::new("non-matching renegotiation info").unwrap();
            unsafe {
                mbedtls_debug_print_msg(ssl, 1, file.as_ptr(), 202, msg.as_ptr());
                mbedtls_ssl_send_alert_message(ssl, 2, 40);
            }
            return MBEDTLS_ERR_SSL_BAD_HS_SERVER_HELLO;
        }
    } else {
        if buf.len() != 1 || buf[0] != 0x0 {
            let file = CString::new("ssl_srv.c").unwrap();
            let msg = CString::new("non-zero length renegotiation info").unwrap();
            unsafe {
                mbedtls_debug_print_msg(ssl, 1, file.as_ptr(), 213, msg.as_ptr());
                mbedtls_ssl_send_alert_message(ssl, 2, 40);
            }
            return MBEDTLS_ERR_SSL_BAD_HS_SERVER_HELLO;
        }
        ssl.secure_renegotiation = 1;
    }
    0
}
