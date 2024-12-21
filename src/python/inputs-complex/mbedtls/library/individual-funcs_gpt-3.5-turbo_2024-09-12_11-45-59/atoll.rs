use std::os::raw::c_char;

extern {
    fn strtoll(nptr: *const c_char, endptr: *mut *mut c_char, base: i32) -> i64;
}

fn atoll(nptr: *const c_char) -> i64 {
    unsafe {
        strtoll(nptr, std::ptr::null_mut(), 10)
    }
}
