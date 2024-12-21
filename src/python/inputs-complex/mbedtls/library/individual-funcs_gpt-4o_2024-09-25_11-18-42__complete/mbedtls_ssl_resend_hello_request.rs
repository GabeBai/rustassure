use std::ffi::CStr;
use std::os::raw::c_char;
use std::ptr;

#[repr(C)]
pub struct MbedtlsSslConfig {
    renego_max_records: i32,
    hs_timeout_max: u32,
    hs_timeout_min: u32,
}

#[repr(C)]
pub struct MbedtlsSslContext {
    conf: *const MbedtlsSslConfig,
    renego_records_seen: u32,
}

extern "C" {
    fn mbedtls_debug_print_msg(
        ssl: *const MbedtlsSslContext,
        level: i32,
        file: *const c_char,
        line: i32,
        format: *const c_char,
    );
    fn ssl_write_hello_request(ssl: *mut MbedtlsSslContext) -> i32;
}

pub fn mbedtls_ssl_resend_hello_request(ssl: &mut MbedtlsSslContext) -> i32 {
    unsafe {
        if (*ssl.conf).renego_max_records < 0 {
            let mut ratio = (*ssl.conf).hs_timeout_max / (*ssl.conf).hs_timeout_min + 1;
            let mut doublings = 1;
            while ratio != 0 {
                doublings += 1;
                ratio >>= 1;
            }
            if {
                ssl.renego_records_seen += 1;
                ssl.renego_records_seen
            } > doublings
            {
                let file = CStr::from_bytes_with_nul(b"ssl_tls.c\0").unwrap();
                let format = CStr::from_bytes_with_nul(
                    b"no longer retransmitting hello request\0",
                )
                .unwrap();
                mbedtls_debug_print_msg(
                    ssl,
                    2,
                    file.as_ptr(),
                    2002,
                    format.as_ptr(),
                );
                return 0;
            }
        }
        ssl_write_hello_request(ssl)
    }
}
