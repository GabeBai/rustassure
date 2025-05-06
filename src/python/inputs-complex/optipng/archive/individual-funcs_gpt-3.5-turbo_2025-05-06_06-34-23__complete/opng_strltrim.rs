use std::os::raw::{c_char, c_uchar};

extern "C" {
    fn __ctype_b_loc() -> *const *const u16;
}

fn opng_strltrim(str: *const c_char) -> *const c_char {
    unsafe {
        let mut str = str;
        while (*(*__ctype_b_loc()).offset(*str as isize) as c_uchar & 0x20) != 0 {
            str = str.offset(1);
        }
        str
    }
}
