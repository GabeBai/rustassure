use std::ffi::CString;
use std::ptr;
use std::slice;

extern "C" {
    fn mbedtls_ssl_send_alert_message(ssl: *mut mbedtls_ssl_context, level: u8, message: u8) -> i32;
    fn mbedtls_debug_print_msg(ssl: *const mbedtls_ssl_context, level: i32, file: *const i8, line: i32, format: *const i8, ...);
    fn memcmp(s1: *const u8, s2: *const u8, n: usize) -> i32;
    fn strlen(s: *const i8) -> usize;
}

#[repr(C)]
struct mbedtls_ssl_context {
    conf: *const mbedtls_ssl_config,
    alpn_chosen: *const i8,
}

#[repr(C)]
struct mbedtls_ssl_config {
    alpn_list: *const *const i8,
}

const MBEDTLS_ERR_SSL_BAD_INPUT_DATA: i32 = -0x7980;

fn ssl_parse_alpn_ext00(ssl: *mut mbedtls_ssl_context, buf: *const u8, len: usize) -> i32 {
    unsafe {
        if (*(*ssl).conf).alpn_list.is_null() {
            let file = CString::new("ssl_cli.c").unwrap();
            let msg = CString::new("non-matching ALPN extension").unwrap();
            mbedtls_debug_print_msg(ssl, 1, file.as_ptr(), 1653, msg.as_ptr());
            mbedtls_ssl_send_alert_message(ssl, 2, 40);
            return MBEDTLS_ERR_SSL_BAD_INPUT_DATA;
        }

        if len < 4 {
            mbedtls_ssl_send_alert_message(ssl, 2, 50);
            return MBEDTLS_ERR_SSL_BAD_INPUT_DATA;
        }

        let list_len = ((buf.read() as usize) << 8) | buf.add(1).read() as usize;
        if list_len != len - 2 {
            mbedtls_ssl_send_alert_message(ssl, 2, 50);
            return MBEDTLS_ERR_SSL_BAD_INPUT_DATA;
        }

        let name_len = buf.add(2).read() as usize;
        if name_len != list_len - 1 {
            mbedtls_ssl_send_alert_message(ssl, 2, 50);
            return MBEDTLS_ERR_SSL_BAD_INPUT_DATA;
        }

        let alpn_list = (*(*ssl).conf).alpn_list;
        let mut p = alpn_list;

        while !(*p).is_null() {
            let alpn_str = *p;
            if name_len == strlen(alpn_str) && memcmp(buf.add(3), alpn_str as *const u8, name_len) == 0 {
                (*ssl).alpn_chosen = alpn_str;
                return 0;
            }
            p = p.add(1);
        }

        let file = CString::new("ssl_cli.c").unwrap();
        let msg = CString::new("ALPN extension: no matching protocol").unwrap();
        mbedtls_debug_print_msg(ssl, 1, file.as_ptr(), 1706, msg.as_ptr());
        mbedtls_ssl_send_alert_message(ssl, 2, 40);
        MBEDTLS_ERR_SSL_BAD_INPUT_DATA
    }
}
