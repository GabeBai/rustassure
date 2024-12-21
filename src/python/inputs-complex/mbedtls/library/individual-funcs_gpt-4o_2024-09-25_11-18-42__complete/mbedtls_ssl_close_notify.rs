use std::ptr;
use std::ffi::CStr;
use std::os::raw::{c_char, c_int, c_uint, c_uchar, c_void};

#[repr(C)]
struct MbedtlsSslContext {
    conf: *const MbedtlsSslConfig,
    state: c_int,
    out_left: usize,
}

#[repr(C)]
struct MbedtlsSslConfig;

extern "C" {
    fn mbedtls_ssl_send_alert_message(ssl: *mut MbedtlsSslContext, level: c_uchar, message: c_uchar) -> c_int;
    fn mbedtls_ssl_flush_output(ssl: *mut MbedtlsSslContext) -> c_int;
    fn mbedtls_debug_print_msg(ssl: *const MbedtlsSslContext, level: c_int, file: *const c_char, line: c_int, format: *const c_char, ...);
    fn mbedtls_debug_print_ret(ssl: *const MbedtlsSslContext, level: c_int, file: *const c_char, line: c_int, text: *const c_char, ret: c_int);
}

const MBEDTLS_SSL_HANDSHAKE_OVER: c_int = 1;
const MBEDTLS_ERR_SSL_BAD_INPUT_DATA: c_int = -0x7100;
const MBEDTLS_ERR_SSL_WANT_WRITE: c_int = -0x006E;

fn mbedtls_ssl_close_notify(ssl: *mut MbedtlsSslContext) -> c_int {
    if ssl.is_null() || unsafe { (*ssl).conf }.is_null() {
        return MBEDTLS_ERR_SSL_BAD_INPUT_DATA;
    }

    unsafe {
        mbedtls_debug_print_msg(ssl, 2, CStr::from_bytes_with_nul_unchecked(b"ssl_msg.c\0").as_ptr(), 5815, CStr::from_bytes_with_nul_unchecked(b"=> write close notify\0").as_ptr());

        if (*ssl).out_left != 0 {
            return mbedtls_ssl_flush_output(ssl);
        }

        if (*ssl).state == MBEDTLS_SSL_HANDSHAKE_OVER {
            let ret = mbedtls_ssl_send_alert_message(ssl, 1, 0);
            if ret != 0 {
                mbedtls_debug_print_ret(ssl, 1, CStr::from_bytes_with_nul_unchecked(b"ssl_msg.c\0").as_ptr(), 5826, CStr::from_bytes_with_nul_unchecked(b"mbedtls_ssl_send_alert_message\0").as_ptr(), ret);
                return ret;
            }
        }

        mbedtls_debug_print_msg(ssl, 2, CStr::from_bytes_with_nul_unchecked(b"ssl_msg.c\0").as_ptr(), 5831, CStr::from_bytes_with_nul_unchecked(b"<= write close notify\0").as_ptr());
    }

    0
}
