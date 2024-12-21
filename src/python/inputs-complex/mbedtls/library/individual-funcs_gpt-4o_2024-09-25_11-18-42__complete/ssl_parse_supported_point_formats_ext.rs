use std::ffi::CStr;
use std::os::raw::c_char;
use std::ptr;

#[repr(C)]
struct MbedtlsSslContext {
    handshake: *mut MbedtlsSslHandshakeParams,
}

#[repr(C)]
struct MbedtlsSslHandshakeParams {
    ecdh_ctx: MbedtlsEcdhContext,
}

#[repr(C)]
struct MbedtlsEcdhContext {
    point_format: u8,
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

const MBEDTLS_ERR_SSL_BAD_HS_SERVER_HELLO: i32 = -0x7980;

fn ssl_parse_supported_point_formats_ext(
    ssl: &mut MbedtlsSslContext,
    buf: &[u8],
) -> i32 {
    if buf.is_empty() || (buf[0] as usize + 1) != buf.len() {
        unsafe {
            mbedtls_debug_print_msg(
                ssl,
                1,
                CStr::from_bytes_with_nul_unchecked(b"ssl_cli.c\0").as_ptr(),
                1574,
                CStr::from_bytes_with_nul_unchecked(b"bad server hello message\0").as_ptr(),
            );
            mbedtls_ssl_send_alert_message(ssl, 2, 50);
        }
        return MBEDTLS_ERR_SSL_BAD_HS_SERVER_HELLO;
    }

    let list_size = buf[0] as usize;
    let mut p = &buf[1..];

    while !p.is_empty() {
        if p[0] == 0 || p[0] == 1 {
            unsafe {
                (*(*ssl).handshake).ecdh_ctx.point_format = p[0];
                mbedtls_debug_print_msg(
                    ssl,
                    4,
                    CStr::from_bytes_with_nul_unchecked(b"ssl_cli.c\0").as_ptr(),
                    1593,
                    CStr::from_bytes_with_nul_unchecked(b"point format selected: %d\0").as_ptr(),
                    p[0] as i32,
                );
            }
            return 0;
        }
        p = &p[1..];
    }

    unsafe {
        mbedtls_debug_print_msg(
            ssl,
            1,
            CStr::from_bytes_with_nul_unchecked(b"ssl_cli.c\0").as_ptr(),
            1601,
            CStr::from_bytes_with_nul_unchecked(b"no point format in common\0").as_ptr(),
        );
        mbedtls_ssl_send_alert_message(ssl, 2, 40);
    }
    MBEDTLS_ERR_SSL_BAD_HS_SERVER_HELLO
}
