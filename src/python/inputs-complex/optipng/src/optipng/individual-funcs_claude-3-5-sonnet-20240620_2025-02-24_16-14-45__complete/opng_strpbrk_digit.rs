use std::ffi::c_char;

unsafe fn opng_strpbrk_digit(str: *const c_char) -> *mut c_char {
    let mut ptr = str;
    loop {
        if *ptr == 0 {
            return std::ptr::null_mut();
        }
        if (*ptr as u8).is_ascii_digit() {
            return ptr as *mut c_char;
        }
        ptr = ptr.offset(1);
    }
}