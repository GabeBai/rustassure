use std::ffi::{CStr, CString};
use std::os::raw::{c_char, c_int};
use std::ptr;

const DEBUG_THRESHOLD: c_int = 0;

#[repr(C)]
struct MbedtlsSslContext {
    conf: *const MbedtlsSslConfig,
    // other fields...
}

#[repr(C)]
struct MbedtlsSslConfig {
    f_dbg: Option<extern "C" fn(*mut std::ffi::c_void, c_int, *const c_char, c_int, *const c_char)>,
    // other fields...
}

#[repr(C)]
struct MbedtlsEcpPoint {
    X: MbedtlsMpi,
    Y: MbedtlsMpi,
    // other fields...
}

#[repr(C)]
struct MbedtlsMpi {
    // fields...
}

extern "C" {
    fn mbedtls_debug_print_mpi(
        ssl: *const MbedtlsSslContext,
        level: c_int,
        file: *const c_char,
        line: c_int,
        text: *const c_char,
        X: *const MbedtlsMpi,
    );
}

fn mbedtls_debug_print_ecp(
    ssl: *const MbedtlsSslContext,
    level: c_int,
    file: *const c_char,
    line: c_int,
    text: *const c_char,
    X: *const MbedtlsEcpPoint,
) {
    unsafe {
        if ssl.is_null()
            || (*ssl).conf.is_null()
            || (*(*ssl).conf).f_dbg.is_none()
            || level > DEBUG_THRESHOLD
        {
            return;
        }

        let text_x = CString::new(format!("{}(X)", CStr::from_ptr(text).to_str().unwrap())).unwrap();
        mbedtls_debug_print_mpi(ssl, level, file, line, text_x.as_ptr(), &(*X).X);

        let text_y = CString::new(format!("{}(Y)", CStr::from_ptr(text).to_str().unwrap())).unwrap();
        mbedtls_debug_print_mpi(ssl, level, file, line, text_y.as_ptr(), &(*X).Y);
    }
}
