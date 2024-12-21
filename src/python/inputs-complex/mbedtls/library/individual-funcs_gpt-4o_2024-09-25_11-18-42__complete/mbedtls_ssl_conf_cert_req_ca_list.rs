pub struct MbedtlsSslConfig {
    pub cert_req_ca_list: u8,
    // other fields omitted for brevity
}

pub fn mbedtls_ssl_conf_cert_req_ca_list(conf: &mut MbedtlsSslConfig, cert_req_ca_list: u8) {
    conf.cert_req_ca_list = cert_req_ca_list;
}
