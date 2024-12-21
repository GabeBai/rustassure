use std::ptr;

pub struct MbedtlsPkContext {
    // Fields omitted for brevity
}

pub struct MbedtlsSslKeyCert {
    cert: *mut MbedtlsX509Crt,
    key: *mut MbedtlsPkContext,
    next: *mut MbedtlsSslKeyCert,
}

pub struct MbedtlsSslContext {
    conf: *const MbedtlsSslConfig,
    handshake: *mut MbedtlsSslHandshakeParams,
}

pub struct MbedtlsSslConfig {
    key_cert: *mut MbedtlsSslKeyCert,
}

pub struct MbedtlsSslHandshakeParams {
    key_cert: *mut MbedtlsSslKeyCert,
}

pub struct MbedtlsX509Crt {
    // Fields omitted for brevity
}

pub unsafe fn mbedtls_ssl_own_key(ssl: *mut MbedtlsSslContext) -> *mut MbedtlsPkContext {
    let mut key_cert: *mut MbedtlsSslKeyCert;
    if !(*ssl).handshake.is_null() && !(*(*ssl).handshake).key_cert.is_null() {
        key_cert = (*(*ssl).handshake).key_cert;
    } else {
        key_cert = (*(*ssl).conf).key_cert;
    }
    if key_cert.is_null() {
        ptr::null_mut()
    } else {
        (*key_cert).key
    }
}
