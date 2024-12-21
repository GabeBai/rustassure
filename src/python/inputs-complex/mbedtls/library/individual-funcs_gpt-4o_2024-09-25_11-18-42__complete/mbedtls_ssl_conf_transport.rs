pub struct MbedtlsSslConfig {
    pub transport: u8,
    // other fields omitted for brevity
}

pub fn mbedtls_ssl_conf_transport(conf: &mut MbedtlsSslConfig, transport: u8) {
    conf.transport = transport;
}
