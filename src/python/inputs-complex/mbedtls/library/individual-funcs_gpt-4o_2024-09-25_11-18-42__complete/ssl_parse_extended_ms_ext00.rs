use std::ptr;
use std::ffi::CStr;
use std::os::raw::c_char;

#[repr(C)]
struct MbedtlsSslConfig {
    extended_ms: u32,
    // Other fields omitted for brevity
}

#[repr(C)]
struct MbedtlsSslHandshakeParams {
    extended_ms: u32,
    // Other fields omitted for brevity
}

#[repr(C)]
struct MbedtlsSslContext {
    conf: *const MbedtlsSslConfig,
    minor_ver: u32,
    handshake: *mut MbedtlsSslHandshakeParams,
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

const MBEDTLS_ERR_SSL_BAD_HS_EXTENDED_MS: i32 = -0x7980;

fn ssl_parse_extended_ms_ext00(
    ssl: &mut MbedtlsSslContext,
    buf: &[u8],
) -> i32 {
    unsafe {
        if (*ssl.conf).extended_ms == 0 || ssl.minor_ver == 0 || !buf.is_empty() {
            let file = CStr::from_bytes_with_nul(b"ssl_cli.c\0").unwrap();
            let format = CStr::from_bytes_with_nul(b"non-matching extended master secret extension\0").unwrap();
            mbedtls_debug_print_msg(
                ssl,
                1,
                file.as_ptr(),
                1522,
                format.as_ptr(),
            );
            mbedtls_ssl_send_alert_message(ssl, 2, 40);
            return MBEDTLS_ERR_SSL_BAD_HS_EXTENDED_MS;
        }
        (*ssl.handshake).extended_ms = 1;
    }
    0
}

fn main() {
    // Example usage
    let config = MbedtlsSslConfig { extended_ms: 1 };
    let mut handshake = MbedtlsSslHandshakeParams { extended_ms: 0 };
    let mut ssl = MbedtlsSslContext {
        conf: &config,
        minor_ver: 1,
        handshake: &mut handshake,
    };

    let buf: [u8; 0] = [];
    let result = ssl_parse_extended_ms_ext00(&mut ssl, &buf);
    println!("Result: {}", result);
}
