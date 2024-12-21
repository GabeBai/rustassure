pub struct MbedtlsSslConfig {
    pub trunc_hmac: i32,
    // other fields omitted for brevity
}

pub fn mbedtls_ssl_conf_truncated_hmac(conf: &mut MbedtlsSslConfig, truncate: i32) {
    conf.trunc_hmac = truncate;
}
