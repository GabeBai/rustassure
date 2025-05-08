use std::os::raw::c_char;

fn u8encode(ch: i32, s: &mut [c_char]) -> i32 {
    let mut len = -1;
    let mut t = [0 as c_char; 8];
    let mut s_ptr = s.as_mut_ptr();

    if s_ptr.is_null() {
        s_ptr = t.as_mut_ptr();
    }

    if ch == 0 {
        len = 2;
        unsafe {
            *s_ptr = 0xC0;
            s_ptr = s_ptr.add(1);
            *s_ptr = 0x80;
        }
    } else if ch < 0x80 {
        len = 1;
        unsafe {
            *s_ptr = ch as c_char;
        }
    } else if ch < 0x0800 {
        len = 2;
        unsafe {
            *s_ptr = 0xC0 | ((ch >> 6) as c_char);
            s_ptr = s_ptr.add(1);
            *s_ptr = 0x80 | ((ch & 0x3F) as c_char);
        }
    } else if ch < 0x10000 {
        len = 3;
        unsafe {
            *s_ptr = 0xE0 | ((ch >> 12) as c_char);
            s_ptr = s_ptr.add(1);
            *s_ptr = 0x80 | (((ch >> 6) & 0x3F) as c_char);
            s_ptr = s_ptr.add(1);
            *s_ptr = 0x80 | ((ch & 0x3F) as c_char);
        }
    } else if ch < 0x110000 {
        len = 4;
        unsafe {
            *s_ptr = 0xF0 | ((ch >> 18) as c_char);
            s_ptr = s_ptr.add(1);
            *s_ptr = 0x80 | (((ch >> 12) & 0x3F) as c_char);
            s_ptr = s_ptr.add(1);
            *s_ptr = 0x80 | (((ch >> 6) & 0x3F) as c_char);
            s_ptr = s_ptr.add(1);
            *s_ptr = 0x80 | ((ch & 0x3F) as c_char);
        }
    }

    unsafe {
        *s_ptr = '\0' as c_char;
    }

    len
}
