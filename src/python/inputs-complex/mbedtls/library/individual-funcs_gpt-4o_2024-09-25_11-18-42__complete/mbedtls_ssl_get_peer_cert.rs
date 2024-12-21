pub struct MbedtlsSslContext {
    pub session: Option<Box<MbedtlsSslSession>>,
}

pub struct MbedtlsSslSession {
    pub peer_cert: Option<Box<MbedtlsX509Crt>>,
}

pub struct MbedtlsX509Crt;

pub fn mbedtls_ssl_get_peer_cert(ssl: &MbedtlsSslContext) -> Option<&MbedtlsX509Crt> {
    ssl.session.as_ref()?.peer_cert.as_deref()
}
