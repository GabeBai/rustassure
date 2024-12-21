use std::ffi::CStr;
use std::fmt::Write;
use std::ptr;
use std::slice;

const DEBUG_THRESHOLD: i32 = 0;

#[repr(C)]
pub struct MbedtlsSslContext {
    conf: *const MbedtlsSslConfig,
    // other fields...
}

#[repr(C)]
pub struct MbedtlsSslConfig {
    f_dbg: Option<extern "C" fn(*mut std::ffi::c_void, i32, *const std::ffi::c_char, i32, *const std::ffi::c_char)>,
    // other fields...
}

extern "C" {
    fn debug_send_line(ssl: *const MbedtlsSslContext, level: i32, file: *const std::ffi::c_char, line: i32, str: *const std::ffi::c_char);
}

pub fn mbedtls_debug_print_buf(
    ssl: *const MbedtlsSslContext,
    level: i32,
    file: *const std::ffi::c_char,
    line: i32,
    text: *const std::ffi::c_char,
    buf: *const u8,
    len: usize,
) {
    if ssl.is_null() || unsafe { (*ssl).conf }.is_null() || unsafe { (*(*ssl).conf).f_dbg }.is_none() || level > DEBUG_THRESHOLD {
        return;
    }

    let text = unsafe { CStr::from_ptr(text).to_str().unwrap_or("") };
    let mut str = String::with_capacity(512);
    let mut txt = [0u8; 17];
    let mut idx = 0;

    write!(str, "dumping '{}' ({} bytes)\n", text, len).unwrap();
    unsafe {
        debug_send_line(ssl, level, file, line, str.as_ptr() as *const std::ffi::c_char);
    }

    str.clear();
    idx = 0;
    txt.fill(0);

    let buf_slice = unsafe { slice::from_raw_parts(buf, len) };

    for (i, &byte) in buf_slice.iter().enumerate() {
        if i >= 4096 {
            break;
        }
        if i % 16 == 0 {
            if i > 0 {
                write!(str, "  {}\n", std::str::from_utf8(&txt).unwrap_or("")).unwrap();
                unsafe {
                    debug_send_line(ssl, level, file, line, str.as_ptr() as *const std::ffi::c_char);
                }
                str.clear();
                txt.fill(0);
            }
            write!(str, "{:04x}: ", i).unwrap();
        }
        write!(str, " {:02x}", byte).unwrap();
        txt[i % 16] = if byte > 31 && byte < 127 { byte } else { b'.' };
    }

    if len > 0 {
        for i in len..((len + 15) & !15) {
            write!(str, "   ").unwrap();
        }
        write!(str, "  {}\n", std::str::from_utf8(&txt).unwrap_or("")).unwrap();
        unsafe {
            debug_send_line(ssl, level, file, line, str.as_ptr() as *const std::ffi::c_char);
        }
    }
}
