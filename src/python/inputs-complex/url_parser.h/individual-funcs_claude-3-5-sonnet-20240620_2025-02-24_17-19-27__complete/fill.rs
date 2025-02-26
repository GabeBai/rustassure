use std::mem::transmute;

static mut CHAR_CAT: [u8; 256] = [0; 256];

#[repr(u32)]
enum Category {
    Scheme = 0x01,
    Unreserved = 0x02,
    GenDelim = 0x04,
    SubDelim = 0x08,
    PCharSlash = 0x10,
    HexDigit = 0x20,
    Query = 0x40,
    Fragment = 0x40,
    Userinfo = 0x80,
    IPv6Char = 0x100,
}

unsafe fn fill(value: Category, alnum: &str, special: &str) {
    for c in alnum.bytes() {
        CHAR_CAT[c as usize] |= transmute::<Category, u8>(value);
    }
    for c in special.bytes() {
        CHAR_CAT[c as usize] |= transmute::<Category, u8>(value);
    }
}