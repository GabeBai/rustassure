use std::os::raw::c_char;

fn u8encode(ch: i32, s: *mut c_char) -> i32 {
    let mut len = -1;
    let mut t: [u8; 8] = [0; 8];
    let s = if s.is_null() { t.as_mut_ptr() } else { s };

    if ch == 0 {
        len = 2;
        unsafe {
            *s.offset(0) = 0xC0;
            *s.offset(1) = 0x80;
        }
    } else if ch < 0x80 {
        len = 1;
        unsafe {
            *s.offset(0) = ch as u8;
        }
    } else if ch < 0x0800 {
        len = 2;
        unsafe {
            *s.offset(0) = 0xC0 | ((ch >> 6) as u8);
            *s.offset(1) = 0x80 | ((ch & 0x3F) as u8);
        }
    } else if ch < 0x10000 {
        len = 3;
        unsafe {
            *s.offset(0) = 0xE0 | ((ch >> 12) as u8);
            *s.offset(1) = 0x80 | (((ch >> 6) & 0x3F) as u8);
            *s.offset(2) = 0x80 | ((ch & 0x3F) as u8);
        }
    } else if ch < 0x110000 {
        len = 4;
        unsafe {
            *s.offset(0) = 0xF0 | ((ch >> 18) as u8);
            *s.offset(1) = 0x80 | (((ch >> 12) & 0x3F) as u8);
            *s.offset(2) = 0x80 | (((ch >> 6) & 0x3F) as u8);
            *s.offset(3) = 0x80 | ((ch & 0x3F) as u8);
        }
    }
    unsafe {
        *s.offset(len as isize) = b'\0';
    }
    len
}
