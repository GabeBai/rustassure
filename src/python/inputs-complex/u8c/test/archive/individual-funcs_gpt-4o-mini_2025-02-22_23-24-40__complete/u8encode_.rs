fn u8encode_(ch: i32, s: Option<&mut [u8]>) -> i32 {
    let mut len = -1;
    let mut t = [0u8; 8];
    let s = s.unwrap_or(&mut t);
    let mut s_ptr = 0;

    if ch == 0 {
        len = 2;
        s[s_ptr] = 0xC0;
        s_ptr += 1;
        s[s_ptr] = 0x80;
    } else if ch < 0x80 {
        len = 1;
        s[s_ptr] = ch as u8;
    } else if ch < 0x0800 {
        len = 2;
        s[s_ptr] = 0xC0 | (ch >> 6) as u8;
        s_ptr += 1;
        s[s_ptr] = 0x80 | (ch & 0x3F) as u8;
    } else if ch < 0x10000 {
        len = 3;
        s[s_ptr] = 0xE0 | (ch >> 12) as u8;
        s_ptr += 1;
        s[s_ptr] = 0x80 | ((ch >> 6) & 0x3F) as u8;
        s_ptr += 1;
        s[s_ptr] = 0x80 | (ch & 0x3F) as u8;
    } else if ch < 0x110000 {
        len = 4;
        s[s_ptr] = 0xF0 | (ch >> 18) as u8;
        s_ptr += 1;
        s[s_ptr] = 0x80 | ((ch >> 12) & 0x3F) as u8;
        s_ptr += 1;
        s[s_ptr] = 0x80 | ((ch >> 6) & 0x3F) as u8;
        s_ptr += 1;
        s[s_ptr] = 0x80 | (ch & 0x3F) as u8;
    }
    s[s_ptr + 1] = 0; // Null-terminate the string
    len
}
