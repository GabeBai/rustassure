use std::os::raw::c_char;

fn opng_strpbrk_digit(str: *const c_char) -> *mut i8 {
    unsafe {
        let mut ptr = str;
        loop {
            if *ptr == 0 {
                return std::ptr::null_mut();
            }
            if (*ptr as char).is_digit(10) {
                return ptr as *mut i8;
            }
            ptr = ptr.offset(1);
        }
    }
}
