fn u8encode_(ch: i32, s: *mut u8) -> i32 {
    let mut len = -1;
    let mut t = [0u8; 8];
    let s_ptr = if s.is_null() { t.as_mut_ptr() } else { s };
    let mut s_offset = 0;

    if ch == 0 {
        len = 2;
        unsafe {
            *s_ptr.add(s_offset) = 0xC0;
            s_offset += 1;
            *s_ptr.add(s_offset) = 0x80;
            s_offset += 1;
        }
    } else if ch < 0x80 {
        len = 1;
        unsafe {
            *s_ptr.add(s_offset) = ch as u8;
            s_offset += 1;
        }
    } else if ch < 0x0800 {
        len = 2;
        unsafe {
            *s_ptr.add(s_offset) = (0xC0 | (ch >> 6)) as u8;
            s_offset += 1;
            *s_ptr.add(s_offset) = (0x80 | (ch & 0x3F)) as u8;
            s_offset += 1;
        }
    } else if ch < 0x10000 {
        len = 3;
        unsafe {
            *s_ptr.add(s_offset) = (0xE0 | (ch >> 12)) as u8;
            s_offset += 1;
            *s_ptr.add(s_offset) = (0x80 | ((ch >> 6) & 0x3F)) as u8;
            s_offset += 1;
            *s_ptr.add(s_offset) = (0x80 | (ch & 0x3F)) as u8;
            s_offset += 1;
        }
    } else if ch < 0x110000 {
        len = 4;
        unsafe {
            *s_ptr.add(s_offset) = (0xF0 | (ch >> 18)) as u8;
            s_offset += 1;
            *s_ptr.add(s_offset) = (0x80 | ((ch >> 12) & 0x3F)) as u8;
            s_offset += 1;
            *s_ptr.add(s_offset) = (0x80 | ((ch >> 6) & 0x3F)) as u8;
            s_offset += 1;
            *s_ptr.add(s_offset) = (0x80 | (ch & 0x3F)) as u8;
            s_offset += 1;
        }
    }

    unsafe {
        *s_ptr.add(s_offset) = b'\0';
    }

    len
}