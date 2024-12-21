use std::ptr;

#[repr(C)]
pub struct mbedtls_ssl_context {
    // fields omitted for brevity
}

pub fn mbedtls_ssl_init(ssl: &mut mbedtls_ssl_context) {
    unsafe {
        ptr::write_bytes(ssl as *mut mbedtls_ssl_context, 0, 1);
    }
}
