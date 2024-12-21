use std::os::raw::{c_int, c_void};

#[repr(C)]
pub struct MbedtlsSslConfig {
    // Other fields omitted for brevity
    p_cache: *mut c_void,
    f_get_cache: Option<extern "C" fn(*mut c_void, *mut MbedtlsSslSession) -> c_int>,
    f_set_cache: Option<extern "C" fn(*mut c_void, *const MbedtlsSslSession) -> c_int>,
}

#[repr(C)]
pub struct MbedtlsSslSession {
    // Fields omitted for brevity
}

extern "C" fn mbedtls_ssl_conf_session_cache(
    conf: *mut MbedtlsSslConfig,
    p_cache: *mut c_void,
    f_get_cache: Option<extern "C" fn(*mut c_void, *mut MbedtlsSslSession) -> c_int>,
    f_set_cache: Option<extern "C" fn(*mut c_void, *const MbedtlsSslSession) -> c_int>,
) {
    unsafe {
        (*conf).p_cache = p_cache;
        (*conf).f_get_cache = f_get_cache;
        (*conf).f_set_cache = f_set_cache;
    }
}
