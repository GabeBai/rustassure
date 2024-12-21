use std::ptr;

#[repr(C)]
pub struct MbedtlsSslConfig {
    renego_period: [u8; 8],
    // other fields omitted for brevity
}

pub fn mbedtls_ssl_conf_renegotiation_period(conf: &mut MbedtlsSslConfig, period: &[u8; 8]) {
    unsafe {
        ptr::copy_nonoverlapping(period.as_ptr(), conf.renego_period.as_mut_ptr(), 8);
    }
}
