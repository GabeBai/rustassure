use std::os::raw::c_char;

fn opng_strltrim(str: *const c_char) -> *const c_char {
    unsafe {
        let mut str = str;
        while libc::isspace(*str as i32) != 0 {
            str = str.offset(1);
        }
        str
    }
}
