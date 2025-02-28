fn u8encode(ch: u32, s: &mut [u8]) -> usize {
    let mut len = 0;
    let mut t = [0u8; 8];
    let mut s = s;

    if s.is_empty() {
        s = &mut t;
    }

    if ch == 0 {
        len = 2;
        s[0] = 0xC0;
        s[1] = 0x80;
    } else if ch < 0x80 {
        len = 1;
        s[0] = ch as u8;
    } else if ch < 0x0800 {
        len = 2;
        s[0] = 0xC0 | ((ch >> 6) as u8);
        s[1] = 0x80 | ((ch & 0x3F) as u8);
    } else if ch < 0x10000 {
        len = 3;
        s[0] = 0xE0 | ((ch >> 12) as u8);
        s[1] = 0x80 | (((ch >> 6) & 0x3F) as u8);
        s[2] = 0x80 | ((ch & 0x3F) as u8);
    } else if ch < 0x110000 {
        len = 4;
        s[0] = 0xF0 | ((ch >> 18) as u8);
        s[1] = 0x80 | (((ch >> 12) & 0x3F) as u8);
        s[2] = 0x80 | (((ch >> 6) & 0x3F) as u8);
        s[3] = 0x80 | ((ch & 0x3F) as u8);
    }

    s[len] = b'\0';
    len
}
