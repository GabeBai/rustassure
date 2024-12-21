use std::ffi::CString;
use std::ptr;
use std::mem;

extern "C" {
    fn mbedtls_debug_print_msg(ssl: *const mbedtls_ssl_context, level: i32, file: *const i8, line: i32, format: *const i8, ...);
    fn mbedtls_debug_print_buf(ssl: *const mbedtls_ssl_context, level: i32, file: *const i8, line: i32, text: *const i8, buf: *const u8, len: usize);
    fn memmove(dest: *mut u8, src: *const u8, n: usize) -> *mut u8;
}

#[repr(C)]
struct mbedtls_ssl_context {
    in_hslen: usize,
    in_offt: *const u8,
    in_msg: *mut u8,
    in_msglen: usize,
}

const MBEDTLS_ERR_SSL_INTERNAL_ERROR: i32 = -0x6C00;

fn ssl_consume_current_message(ssl: &mut mbedtls_ssl_context) -> i32 {
    if ssl.in_hslen != 0 {
        if !ssl.in_offt.is_null() {
            let file = CString::new("ssl_msg.c").unwrap();
            let msg = CString::new("should never happen").unwrap();
            unsafe {
                mbedtls_debug_print_msg(ssl, 1, file.as_ptr(), 4374, msg.as_ptr());
            }
            return MBEDTLS_ERR_SSL_INTERNAL_ERROR;
        }
        if ssl.in_hslen < ssl.in_msglen {
            ssl.in_msglen -= ssl.in_hslen;
            unsafe {
                memmove(ssl.in_msg, ssl.in_msg.add(ssl.in_hslen), ssl.in_msglen);
            }
            let file = CString::new("ssl_msg.c").unwrap();
            let text = CString::new("remaining content in record").unwrap();
            unsafe {
                mbedtls_debug_print_buf(ssl, 4, file.as_ptr(), 4406, text.as_ptr(), ssl.in_msg, ssl.in_msglen);
            }
        } else {
            ssl.in_msglen = 0;
        }
        ssl.in_hslen = 0;
    } else if !ssl.in_offt.is_null() {
        return 0;
    } else {
        ssl.in_msglen = 0;
    }
    0
}
