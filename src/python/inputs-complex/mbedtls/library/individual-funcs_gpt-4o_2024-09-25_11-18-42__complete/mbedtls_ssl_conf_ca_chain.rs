pub struct MbedtlsSslConfig {
    pub ca_chain: *mut MbedtlsX509Crt,
    pub ca_crl: *mut MbedtlsX509Crl,
    // other fields omitted for brevity
}

pub struct MbedtlsX509Crt {
    // fields omitted for brevity
}

pub struct MbedtlsX509Crl {
    // fields omitted for brevity
}

pub fn mbedtls_ssl_conf_ca_chain(conf: &mut MbedtlsSslConfig, ca_chain: *mut MbedtlsX509Crt, ca_crl: *mut MbedtlsX509Crl) {
    conf.ca_chain = ca_chain;
    conf.ca_crl = ca_crl;
}
