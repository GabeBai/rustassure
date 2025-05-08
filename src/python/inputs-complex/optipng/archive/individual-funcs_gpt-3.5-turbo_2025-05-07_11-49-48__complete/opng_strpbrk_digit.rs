use std::os::raw::c_char;

fn opng_strpbrk_digit(str: *const c_char) -> *const c_char {
    let mut ptr = str;
    
    loop {
        unsafe {
            if *ptr == 0 {
                return std::ptr::null();
            }
            if (*ptr as u8 as char).is_digit(10) {
                return ptr;
            }
            ptr = ptr.offset(1);
        }
    }
}
