use std::ffi::CString;
use std::ptr;
use std::slice;

struct MbedtlsSslContext {
    hostname: *mut i8,
}

extern "C" {
    fn mbedtls_platform_zeroize(buf: *mut std::ffi::c_void, len: usize);
}

fn mbedtls_ssl_set_hostname(ssl: &mut MbedtlsSslContext, hostname: Option<&str>) -> i32 {
    const MBEDTLS_ERR_SSL_BAD_INPUT_DATA: i32 = -0x7100;
    const MBEDTLS_ERR_SSL_ALLOC_FAILED: i32 = -0x7F00;

    if let Some(hostname) = hostname {
        let hostname_len = hostname.len();
        if hostname_len > 255 {
            return MBEDTLS_ERR_SSL_BAD_INPUT_DATA;
        }

        if !ssl.hostname.is_null() {
            unsafe {
                let existing_hostname = CString::from_raw(ssl.hostname);
                mbedtls_platform_zeroize(existing_hostname.as_ptr() as *mut std::ffi::c_void, existing_hostname.to_bytes().len());
                // CString::from_raw takes ownership and will free the memory
            }
        }

        let c_hostname = match CString::new(hostname) {
            Ok(cstr) => cstr,
            Err(_) => return MBEDTLS_ERR_SSL_ALLOC_FAILED,
        };

        ssl.hostname = c_hostname.into_raw();
    } else {
        if !ssl.hostname.is_null() {
            unsafe {
                let existing_hostname = CString::from_raw(ssl.hostname);
                mbedtls_platform_zeroize(existing_hostname.as_ptr() as *mut std::ffi::c_void, existing_hostname.to_bytes().len());
                // CString::from_raw takes ownership and will free the memory
            }
        }
        ssl.hostname = ptr::null_mut();
    }

    0
}

fn main() {
    // Example usage
    let mut ssl_context = MbedtlsSslContext { hostname: ptr::null_mut() };
    let result = mbedtls_ssl_set_hostname(&mut ssl_context, Some("example.com"));
    println!("Result: {}", result);
}
