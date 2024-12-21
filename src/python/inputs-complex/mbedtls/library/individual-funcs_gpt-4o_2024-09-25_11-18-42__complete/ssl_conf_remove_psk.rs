use std::ptr;
use std::slice;

struct MbedtlsSslConfig {
    psk: *mut u8,
    psk_len: usize,
    psk_identity: *mut u8,
    psk_identity_len: usize,
}

extern "C" {
    fn mbedtls_platform_zeroize(buf: *mut u8, len: usize);
}

fn ssl_conf_remove_psk(conf: &mut MbedtlsSslConfig) {
    unsafe {
        if !conf.psk.is_null() {
            mbedtls_platform_zeroize(conf.psk, conf.psk_len);
            let _ = Box::from_raw(slice::from_raw_parts_mut(conf.psk, conf.psk_len));
            conf.psk = ptr::null_mut();
            conf.psk_len = 0;
        }
        if !conf.psk_identity.is_null() {
            let _ = Box::from_raw(slice::from_raw_parts_mut(conf.psk_identity, conf.psk_identity_len));
            conf.psk_identity = ptr::null_mut();
            conf.psk_identity_len = 0;
        }
    }
}
