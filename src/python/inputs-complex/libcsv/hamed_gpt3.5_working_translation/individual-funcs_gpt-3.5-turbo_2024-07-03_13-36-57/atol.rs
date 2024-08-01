use std::os::raw::c_char;

extern "C" {
    fn strtol(nptr: *const c_char, endptr: *mut *mut c_char, base: i32) -> i64;
}

#[no_mangle]
pub extern "C" fn atol(nptr: *const c_char) -> i64 {
    unsafe {
        strtol(nptr, std::ptr::null_mut(), 10)
    }
}