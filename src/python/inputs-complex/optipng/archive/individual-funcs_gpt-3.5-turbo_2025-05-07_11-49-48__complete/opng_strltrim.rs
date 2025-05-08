use std::os::raw::{c_char, c_uchar};

extern "C" {
    fn __ctype_b_loc() -> *const [u16; 384];
}

fn opng_strltrim(str: *const c_char) -> *const c_char {
    unsafe {
        let ctype_b = __ctype_b_loc();
        let mut str = str;
        while (*ctype_b)[*str as usize as usize] & (1 << 5) != 0 {
            str = str.offset(1);
        }
        str
    }
}
