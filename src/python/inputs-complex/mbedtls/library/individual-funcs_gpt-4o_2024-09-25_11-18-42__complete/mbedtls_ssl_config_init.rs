use std::ptr;

#[repr(C)]
pub struct mbedtls_ssl_config {
    // Fields omitted for brevity
}

pub fn mbedtls_ssl_config_init(conf: &mut mbedtls_ssl_config) {
    unsafe {
        ptr::write_bytes(conf as *mut mbedtls_ssl_config, 0, 1);
    }
}
