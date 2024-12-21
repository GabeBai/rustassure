use std::ffi::CStr;
use std::os::raw::c_char;
use std::ptr;

#[repr(C)]
struct MbedtlsSslConfig {
    mfl_code: u8,
    // Other fields omitted for brevity
}

#[repr(C)]
struct MbedtlsSslContext {
    conf: *const MbedtlsSslConfig,
    // Other fields omitted for brevity
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

const MBEDTLS_ERR_SSL_BAD_HS_MAX_FRAGMENT_LENGTH: i32 = -0x7980;

fn ssl_parse_max_fragment_length_ext00(
    ssl: &mut MbedtlsSslContext,
    buf: &[u8],
) -> i32 {
    unsafe {
        let conf = &*ssl.conf;
        if conf.mfl_code == 0 || buf.len() != 1 || buf[0] != conf.mfl_code {
            let file = CStr::from_bytes_with_nul_unchecked(b"ssl_cli.c\0");
            let format = CStr::from_bytes_with_nul_unchecked(b"non-matching max fragment length extension\0");
            mbedtls_debug_print_msg(ssl, 1, file.as_ptr(), 1393, format.as_ptr());
            mbedtls_ssl_send_alert_message(ssl, 2, 40);
            return MBEDTLS_ERR_SSL_BAD_HS_MAX_FRAGMENT_LENGTH;
        }
    }
    0
}

fn main() {
    // Example usage
    let config = MbedtlsSslConfig { mfl_code: 1 };
    let mut context = MbedtlsSslContext { conf: &config };

    let buf = [1];
    let result = ssl_parse_max_fragment_length_ext00(&mut context, &buf);
    println!("Result: {}", result);
}
