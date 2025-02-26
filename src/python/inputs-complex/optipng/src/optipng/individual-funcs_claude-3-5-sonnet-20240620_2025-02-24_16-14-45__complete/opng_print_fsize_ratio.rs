use std::ffi::CStr;
use std::os::raw::c_char;

extern "C" {
    fn opng_ulratio_to_factor_string(buffer: *mut c_char, buffer_size: usize, ratio: *const opng_ulratio) -> i32;
}

#[repr(C)]
struct opng_ulratio {
    num: u64,
    denom: u64,
}

static mut USR_PRINTF: Option<unsafe extern "C" fn(*const c_char, ...)> = None;

unsafe fn opng_print_fsize_ratio(num: u64, denom: u64) {
    let mut buffer = [0i8; 32];
    let ratio = opng_ulratio { num, denom };
    let result = opng_ulratio_to_factor_string(buffer.as_mut_ptr(), buffer.len(), &ratio);
    
    if let Some(usr_printf) = USR_PRINTF {
        let buffer_cstr = CStr::from_ptr(buffer.as_ptr());
        let format = if result > 0 {
            b"%s\0" as *const u8 as *const c_char
        } else {
            b"%s...\0" as *const u8 as *const c_char
        };
        usr_printf(format, buffer_cstr.as_ptr());
    }
}