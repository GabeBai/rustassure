use std::ffi::CStr;
use std::os::raw::c_char;
use std::ptr;

#[repr(C)]
pub struct MbedtlsSslContext {
    conf: *const MbedtlsSslConfig,
    session_negotiate: *mut MbedtlsSslSession,
}

#[repr(C)]
pub struct MbedtlsSslConfig {
    trunc_hmac: i32,
}

#[repr(C)]
pub struct MbedtlsSslSession {
    trunc_hmac: i32,
}

extern "C" {
    fn mbedtls_debug_print_msg(
        ssl: *const MbedtlsSslContext,
        level: i32,
        file: *const c_char,
        line: i32,
        format: *const c_char,
        ...
    );

    fn mbedtls_ssl_send_alert_message(
        ssl: *mut MbedtlsSslContext,
        level: u8,
        message: u8,
    ) -> i32;
}

fn ssl_parse_truncated_hmac_ext(
    ssl: &mut MbedtlsSslContext,
    buf: &[u8],
) -> i32 {
    if !buf.is_empty() {
        unsafe {
            let file = CStr::from_bytes_with_nul_unchecked(b"ssl_srv.c\0");
            let format = CStr::from_bytes_with_nul_unchecked(b"bad client hello message\0");
            mbedtls_debug_print_msg(
                ssl,
                1,
                file.as_ptr(),
                552,
                format.as_ptr(),
            );
            mbedtls_ssl_send_alert_message(ssl, 2, 50);
        }
        return -0x7900;
    }

    if unsafe { (*ssl.conf).trunc_hmac } == 1 {
        unsafe {
            (*ssl.session_negotiate).trunc_hmac = 1;
        }
    }

    0
}

fn main() {
    // Example usage
    let config = MbedtlsSslConfig { trunc_hmac: 1 };
    let mut session = MbedtlsSslSession { trunc_hmac: 0 };
    let mut ssl_context = MbedtlsSslContext {
        conf: &config,
        session_negotiate: &mut session,
    };

    let buf: &[u8] = &[];
    let result = ssl_parse_truncated_hmac_ext(&mut ssl_context, buf);
    println!("Result: {}", result);
}
