pub struct MbedtlsSslConfig {
    pub max_major_ver: u8,
    pub max_minor_ver: u8,
    // other fields omitted for brevity
}

pub fn mbedtls_ssl_conf_max_version(conf: &mut MbedtlsSslConfig, major: i32, minor: i32) {
    conf.max_major_ver = major as u8;
    conf.max_minor_ver = minor as u8;
}
