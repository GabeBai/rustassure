use std::os::raw::{c_char, c_uchar};

extern "C" {
    fn __ctype_b_loc() -> *const [u8; 384];
}

fn opng_strpbrk_digit(str: *const c_char) -> *const c_char {
    unsafe {
        let mut ptr = str;
        loop {
            if *ptr == 0 {
                return std::ptr::null();
            }
            let c = *ptr as c_uchar;
            let ctype_b = &*__ctype_b_loc();
            if (ctype_b[c as usize] as u16) & (1 << 3) != 0 {
                return ptr;
            }
            ptr = ptr.offset(1);
        }
    }
}
