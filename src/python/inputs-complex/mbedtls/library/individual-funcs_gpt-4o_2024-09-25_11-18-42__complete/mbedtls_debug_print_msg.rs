use std::ffi::CStr;
use std::os::raw::{c_char, c_int};
use std::ptr;
use std::fmt::Write;

const DEBUG_THRESHOLD: c_int = 0;

#[repr(C)]
struct MbedtlsSslContext {
    conf: *const MbedtlsSslConfig,
}

#[repr(C)]
struct MbedtlsSslConfig {
    f_dbg: Option<extern "C" fn(*const MbedtlsSslContext, c_int, *const c_char, c_int, *const c_char)>,
}

extern "C" {
    fn debug_send_line(ssl: *const MbedtlsSslContext, level: c_int, file: *const c_char, line: c_int, str: *const c_char);
}

#[no_mangle]
pub extern "C" fn mbedtls_debug_print_msg(ssl: *const MbedtlsSslContext, level: c_int,
                                          file: *const c_char, line: c_int,
                                          format: *const c_char, ...) {
    unsafe {
        if ssl.is_null() || (*ssl).conf.is_null() || (*(*ssl).conf).f_dbg.is_none() || level > DEBUG_THRESHOLD {
            return;
        }

        let mut str = [0u8; 512];
        let format = CStr::from_ptr(format).to_str().unwrap_or("");
        
        let mut args = std::ffi::VaList::new();
        let ret = std::fmt::write(&mut str[..], format_args!(format, args));
        
        if let Ok(ret) = ret {
            if ret < 512 - 1 {
                str[ret] = b'\n';
                str[ret + 1] = b'\0';
            }
        }

        debug_send_line(ssl, level, file, line, str.as_ptr() as *const c_char);
    }
}
