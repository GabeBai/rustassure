pub struct MbedtlsSslConfig {
    // other fields
    pub cbc_record_splitting: u8,
}

pub fn mbedtls_ssl_conf_cbc_record_splitting(conf: &mut MbedtlsSslConfig, split: u8) {
    conf.cbc_record_splitting = split;
}
