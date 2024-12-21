use std::ffi::CStr;
use std::os::raw::c_char;

#[repr(C)]
pub struct MbedtlsSslContext {
    // Add the fields of the struct here
    alpn_chosen: *const c_char,
}

pub fn mbedtls_ssl_get_alpn_protocol(ssl: &MbedtlsSslContext) -> Option<&CStr> {
    if ssl.alpn_chosen.is_null() {
        None
    } else {
        unsafe { Some(CStr::from_ptr(ssl.alpn_chosen)) }
    }
}

fn main() {
    // Example usage
    let ssl_context = MbedtlsSslContext {
        alpn_chosen: std::ptr::null(),
    };

    match mbedtls_ssl_get_alpn_protocol(&ssl_context) {
        Some(protocol) => println!("ALPN protocol: {:?}", protocol),
        None => println!("No ALPN protocol chosen"),
    }
}
