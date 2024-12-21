pub struct MbedtlsSslConfig {
    pub min_major_ver: u8,
    pub min_minor_ver: u8,
    // other fields omitted for brevity
}

pub fn mbedtls_ssl_conf_min_version(conf: &mut MbedtlsSslConfig, major: i32, minor: i32) {
    conf.min_major_ver = major as u8;
    conf.min_minor_ver = minor as u8;
}
