pub struct MbedtlsSslConfig {
    pub renego_max_records: i32,
    // other fields omitted for brevity
}

pub fn mbedtls_ssl_conf_renegotiation_enforced(conf: &mut MbedtlsSslConfig, max_records: i32) {
    conf.renego_max_records = max_records;
}
