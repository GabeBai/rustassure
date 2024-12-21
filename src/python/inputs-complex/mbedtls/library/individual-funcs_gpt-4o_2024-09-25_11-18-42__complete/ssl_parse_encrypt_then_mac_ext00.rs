use std::ffi::CStr;
use std::os::raw::c_char;
use std::ptr;

#[repr(C)]
pub struct MbedtlsSslContext {
    conf: *const MbedtlsSslConfig,
    minor_ver: i32,
    session_negotiate: *mut MbedtlsSslSession,
}

#[repr(C)]
pub struct MbedtlsSslConfig {
    encrypt_then_mac: i32,
}

#[repr(C)]
pub struct MbedtlsSslSession {
    encrypt_then_mac: i32,
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

fn ssl_parse_encrypt_then_mac_ext00(
    ssl: &mut MbedtlsSslContext,
    buf: &[u8],
) -> i32 {
    unsafe {
        if (*ssl.conf).encrypt_then_mac == 0 || ssl.minor_ver == 0 || buf.len() != 0 {
            let file = CStr::from_bytes_with_nul_unchecked(b"ssl_cli.c\0");
            let format = CStr::from_bytes_with_nul_unchecked(b"non-matching encrypt-then-MAC extension\0");
            mbedtls_debug_print_msg(ssl, 1, file.as_ptr(), 1496, format.as_ptr());
            mbedtls_ssl_send_alert_message(ssl, 2, 40);
            return -0x7980;
        }
        (*ssl.session_negotiate).encrypt_then_mac = 1;
    }
    0
}

fn main() {
    // Example usage
    let config = MbedtlsSslConfig { encrypt_then_mac: 1 };
    let session = MbedtlsSslSession { encrypt_then_mac: 0 };
    let mut ssl = MbedtlsSslContext {
        conf: &config,
        minor_ver: 1,
        session_negotiate: &session as *const _ as *mut _,
    };

    let buf: [u8; 0] = [];
    let result = ssl_parse_encrypt_then_mac_ext00(&mut ssl, &buf);
    println!("Result: {}", result);
}
