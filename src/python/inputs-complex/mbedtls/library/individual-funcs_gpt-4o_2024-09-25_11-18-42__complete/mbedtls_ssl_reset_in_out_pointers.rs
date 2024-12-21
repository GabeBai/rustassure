use std::ptr;

#[repr(C)]
pub struct MbedtlsSslConfig {
    transport: u32,
    // Other fields are omitted for brevity
}

#[repr(C)]
pub struct MbedtlsSslContext {
    conf: *const MbedtlsSslConfig,
    out_buf: *mut u8,
    in_buf: *mut u8,
    out_hdr: *mut u8,
    in_hdr: *mut u8,
    // Other fields are omitted for brevity
}

extern "C" {
    fn mbedtls_ssl_update_out_pointers(ssl: *mut MbedtlsSslContext, transform: *mut std::ffi::c_void);
    fn mbedtls_ssl_update_in_pointers(ssl: *mut MbedtlsSslContext);
}

pub unsafe fn mbedtls_ssl_reset_in_out_pointers(ssl: *mut MbedtlsSslContext) {
    if (*(*ssl).conf).transport == 1 {
        (*ssl).out_hdr = (*ssl).out_buf;
        (*ssl).in_hdr = (*ssl).in_buf;
    } else {
        (*ssl).out_hdr = (*ssl).out_buf.add(8);
        (*ssl).in_hdr = (*ssl).in_buf.add(8);
    }
    mbedtls_ssl_update_out_pointers(ssl, ptr::null_mut());
    mbedtls_ssl_update_in_pointers(ssl);
}
