use std::ptr;
use std::os::raw::c_int;

#[repr(C)]
pub struct MbedtlsSslContext {
    conf: *const MbedtlsSslConfig,
    session_negotiate: *mut MbedtlsSslSession,
    handshake: *mut MbedtlsSslHandshakeParams,
}

#[repr(C)]
pub struct MbedtlsSslConfig {
    endpoint: c_int,
}

#[repr(C)]
pub struct MbedtlsSslSession;

#[repr(C)]
pub struct MbedtlsSslHandshakeParams {
    resume: c_int,
}

extern "C" {
    fn mbedtls_ssl_session_copy(dst: *mut MbedtlsSslSession, src: *const MbedtlsSslSession) -> c_int;
}

const MBEDTLS_ERR_SSL_BAD_INPUT_DATA: c_int = -0x7100;
const MBEDTLS_ERR_SSL_ALLOC_FAILED: c_int = -0x006E;

pub fn mbedtls_ssl_set_session(ssl: *mut MbedtlsSslContext, session: *const MbedtlsSslSession) -> c_int {
    if ssl.is_null() || session.is_null() || unsafe { (*ssl).session_negotiate }.is_null() || unsafe { (*(*ssl).conf).endpoint } != 0 {
        return MBEDTLS_ERR_SSL_BAD_INPUT_DATA;
    }

    let ret = unsafe { mbedtls_ssl_session_copy((*ssl).session_negotiate, session) };
    if ret != 0 {
        return ret;
    }

    unsafe {
        (*(*ssl).handshake).resume = 1;
    }

    0
}
