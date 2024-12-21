use std::ptr;
use std::slice;
use std::alloc::{alloc_zeroed, Layout};
use std::ffi::c_void;

#[repr(C)]
pub struct mbedtls_ssl_config {
    psk_identity: *mut u8,
    psk_identity_len: usize,
    // other fields omitted for brevity
}

pub fn ssl_conf_set_psk_identity(conf: &mut mbedtls_ssl_config, psk_identity: *const u8, psk_identity_len: usize) -> i32 {
    if psk_identity.is_null() || (psk_identity_len >> 16) != 0 || psk_identity_len > 16384 {
        return -0x7100;
    }
    unsafe {
        let layout = Layout::array::<u8>(psk_identity_len).unwrap();
        conf.psk_identity = alloc_zeroed(layout) as *mut u8;
        if conf.psk_identity.is_null() {
            return -0x7F00;
        }
        conf.psk_identity_len = psk_identity_len;
        ptr::copy_nonoverlapping(psk_identity, conf.psk_identity, conf.psk_identity_len);
    }
    0
}
