pub struct MbedtlsSslContext {
    pub handshake: Option<Box<MbedtlsSslHandshakeParams>>,
}

pub struct MbedtlsSslHandshakeParams {
    pub sni_authmode: i32,
}

pub fn mbedtls_ssl_set_hs_authmode(ssl: &mut MbedtlsSslContext, authmode: i32) {
    if let Some(handshake) = &mut ssl.handshake {
        handshake.sni_authmode = authmode;
    }
}
