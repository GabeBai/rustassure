pub struct MbedtlsSslConfig {
    pub read_timeout: u32,
    // other fields omitted for brevity
}

pub fn mbedtls_ssl_conf_read_timeout(conf: &mut MbedtlsSslConfig, timeout: u32) {
    conf.read_timeout = timeout;
}
