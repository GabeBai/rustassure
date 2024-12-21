use std::ptr;
use std::slice;
use std::ffi::CStr;
use std::os::raw::{c_int, c_void, c_uchar, c_uint, c_char};

#[repr(C)]
pub struct MbedtlsSslContext {
    conf: *const MbedtlsSslConfig,
    state: c_int,
    // other fields...
}

#[repr(C)]
pub struct MbedtlsSslConfig {
    // fields...
}

extern "C" {
    fn mbedtls_debug_print_msg(ssl: *const MbedtlsSslContext, level: c_int, file: *const c_char, line: c_int, format: *const c_char, ...);
    fn mbedtls_debug_print_ret(ssl: *const MbedtlsSslContext, level: c_int, file: *const c_char, line: c_int, text: *const c_char, ret: c_int);
    fn ssl_check_ctr_renegotiate(ssl: *mut MbedtlsSslContext) -> c_int;
    fn mbedtls_ssl_handshake(ssl: *mut MbedtlsSslContext) -> c_int;
    fn ssl_write_split(ssl: *mut MbedtlsSslContext, buf: *const c_uchar, len: usize) -> c_int;
}

const MBEDTLS_SSL_HANDSHAKE_OVER: c_int = 0; // Placeholder value

#[no_mangle]
pub extern "C" fn mbedtls_ssl_write(ssl: *mut MbedtlsSslContext, buf: *const c_uchar, len: usize) -> c_int {
    const MBEDTLS_ERR_SSL_BAD_INPUT_DATA: c_int = -0x7100;
    const MBEDTLS_ERR_SSL_INTERNAL_ERROR: c_int = -0x006E;

    unsafe {
        mbedtls_debug_print_msg(ssl, 2, CStr::from_bytes_with_nul_unchecked(b"ssl_msg.c\0").as_ptr(), 5772, CStr::from_bytes_with_nul_unchecked(b"=> write\0").as_ptr());

        if ssl.is_null() || (*ssl).conf.is_null() {
            return MBEDTLS_ERR_SSL_BAD_INPUT_DATA;
        }

        let mut ret = ssl_check_ctr_renegotiate(ssl);
        if ret != 0 {
            mbedtls_debug_print_ret(ssl, 1, CStr::from_bytes_with_nul_unchecked(b"ssl_msg.c\0").as_ptr(), 5780, CStr::from_bytes_with_nul_unchecked(b"ssl_check_ctr_renegotiate\0").as_ptr(), ret);
            return ret;
        }

        if (*ssl).state != MBEDTLS_SSL_HANDSHAKE_OVER {
            ret = mbedtls_ssl_handshake(ssl);
            if ret != 0 {
                mbedtls_debug_print_ret(ssl, 1, CStr::from_bytes_with_nul_unchecked(b"ssl_msg.c\0").as_ptr(), 5789, CStr::from_bytes_with_nul_unchecked(b"mbedtls_ssl_handshake\0").as_ptr(), ret);
                return ret;
            }
        }

        ret = ssl_write_split(ssl, buf, len);
        mbedtls_debug_print_msg(ssl, 2, CStr::from_bytes_with_nul_unchecked(b"ssl_msg.c\0").as_ptr(), 5800, CStr::from_bytes_with_nul_unchecked(b"<= write\0").as_ptr());
        ret
    }
}
