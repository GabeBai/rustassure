use std::ffi::CStr;
use std::os::raw::c_char;
use std::os::raw::c_int;
use std::os::raw::c_void;

extern "C" {
    static stdout: *mut std::os::raw::c_void;

    fn vfprintf(file: *mut std::os::raw::c_void, format: *const c_char, args: *mut c_void) -> c_int;
}

#[no_mangle]
pub extern "C" fn vprintf(format: *const c_char, args: *mut c_void) -> c_int {
    unsafe {
        vfprintf(stdout, format, args)
    }
}
