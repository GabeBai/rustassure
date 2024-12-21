use std::ffi::CString;
use std::ptr;
use std::os::raw::c_void;

#[repr(C)]
struct MbedtlsSslContext {
    conf: *const MbedtlsSslConfig,
    session_negotiate: *mut MbedtlsSslSession,
}

#[repr(C)]
struct MbedtlsSslConfig {
    trunc_hmac: i32,
}

#[repr(C)]
struct MbedtlsSslSession {
    trunc_hmac: i32,
}

extern "C" {
    fn mbedtls_debug_print_msg(
        ssl: *const MbedtlsSslContext,
        level: i32,
        file: *const i8,
        line: i32,
        format: *const i8,
        ...
    );

    fn mbedtls_ssl_send_alert_message(
        ssl: *mut MbedtlsSslContext,
        level: u8,
        message: u8,
    ) -> i32;
}

fn ssl_parse_truncated_hmac_ext00(
    ssl: &mut MbedtlsSslContext,
    buf: &[u8],
) -> i32 {
    unsafe {
        if (*ssl.conf).trunc_hmac == 0 || buf.len() != 0 {
            let file = CString::new("ssl_cli.c").unwrap();
            let format = CString::new("non-matching truncated HMAC extension").unwrap();
            mbedtls_debug_print_msg(
                ssl,
                1,
                file.as_ptr(),
                1414,
                format.as_ptr(),
            );
            mbedtls_ssl_send_alert_message(
                ssl,
                2,
                40,
            );
            return -0x7980;
        }
        (*ssl.session_negotiate).trunc_hmac = 1;
    }
    0
}

fn main() {
    // Example usage
    let config = MbedtlsSslConfig { trunc_hmac: 1 };
    let session = MbedtlsSslSession { trunc_hmac: 0 };
    let mut ssl = MbedtlsSslContext {
        conf: &config,
        session_negotiate: &session as *const _ as *mut _,
    };
    let buf: [u8; 0] = [];
    let result = ssl_parse_truncated_hmac_ext00(&mut ssl, &buf);
    println!("Result: {}", result);
}
