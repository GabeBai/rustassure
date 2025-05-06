use std::os::raw::c_char;

extern "C" {
    fn strtod(nptr: *const c_char, endptr: *mut *mut c_char) -> f64;
}

#[no_mangle]
pub extern "C" fn atof(nptr: *const c_char) -> f64 {
    unsafe { strtod(nptr, std::ptr::null_mut()) }
}
