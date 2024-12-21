use std::ptr;

pub struct MbedtlsX509Crt {
    // fields omitted for brevity
}

pub struct MbedtlsX509Crl {
    // fields omitted for brevity
}

pub struct MbedtlsSslContext {
    handshake: *mut MbedtlsSslHandshakeParams,
    // other fields omitted for brevity
}

pub struct MbedtlsSslHandshakeParams {
    sni_ca_chain: *mut MbedtlsX509Crt,
    sni_ca_crl: *mut MbedtlsX509Crl,
    // other fields omitted for brevity
}

pub fn mbedtls_ssl_set_hs_ca_chain(
    ssl: &mut MbedtlsSslContext,
    ca_chain: *mut MbedtlsX509Crt,
    ca_crl: *mut MbedtlsX509Crl,
) {
    unsafe {
        (*ssl.handshake).sni_ca_chain = ca_chain;
        (*ssl.handshake).sni_ca_crl = ca_crl;
    }
}
