use std::collections::HashMap;

struct Category {
    Scheme: u8,
    Unreserved: u8,
    GenDelim: u8,
    SubDelim: u8,
    PCharSlash: u8,
    HexDigit: u8,
    Query: u8,
    Fragment: u8,
    Userinfo: u8,
    IPv6Char: u8,
}

static mut CHAR_CAT: [u8; 256] = [0; 256];

fn fill(value: u8, alnum: &str, special: &str) {
    unsafe {
        for byte in alnum.bytes() {
            CHAR_CAT[byte as usize] |= value;
        }
        for byte in special.bytes() {
            CHAR_CAT[byte as usize] |= value;
        }
    }
}
