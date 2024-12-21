pub struct MbedtlsSslConfig {
    // other fields omitted for brevity
    pub anti_replay: bool,
}

pub fn mbedtls_ssl_conf_dtls_anti_replay(conf: &mut MbedtlsSslConfig, mode: bool) {
    conf.anti_replay = mode;
}
