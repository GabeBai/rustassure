pub struct MbedtlsSslConfig {
    // other fields omitted for brevity
    session_tickets: bool,
}

pub fn mbedtls_ssl_conf_session_tickets(conf: &mut MbedtlsSslConfig, use_tickets: bool) {
    conf.session_tickets = use_tickets;
}
