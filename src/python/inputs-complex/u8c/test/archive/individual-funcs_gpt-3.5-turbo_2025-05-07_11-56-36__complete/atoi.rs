use std::os::raw::c_char;

extern "C" {
    pub fn atoi(nptr: *const c_char) -> i32;
    pub fn strtol(nptr: *const c_char, endptr: *mut *mut c_char, base: i32) -> i64;
}

#[no_mangle]
pub extern "C" fn atoi_wrapper(nptr: *const c_char) -> i32 {
    unsafe {
        strtol(nptr, std::ptr::null_mut(), 10) as i32
    }
}
