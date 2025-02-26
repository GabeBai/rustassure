use std::collections::HashMap;

struct __sbuf {
    _base: *mut u8,
    _size: i32,
}

struct __sFILEX;

#[derive(Debug)]
enum Category {
    Scheme = 0x01,
    Unreserved = 0x02,
    GenDelim = 0x04,
    SubDelim = 0x08,
    PCharSlash = 0x10,
    HexDigit = 0x20,
    Query = 0x40,
    Fragment = 0x80,
    Userinfo = 0x100,
    IPv6Char = 0x200,
}

static mut CHAR_CAT: [u16; 256] = [0; 256];

fn fill(value: u16, alnum: &str, special: &str) {
    for ch in alnum.chars() {
        unsafe {
            CHAR_CAT[ch as usize] |= value;
        }
    }
    for ch in special.chars() {
        unsafe {
            CHAR_CAT[ch as usize] |= value;
        }
    }
}

fn main() {
    fill(Category::Scheme as u16, "scheme_alnum", "scheme_special");
    fill(Category::Unreserved as u16, "unreserved_alnum", "unreserved_special");

    // Add more fill calls as needed

    println!("{:?}", unsafe { CHAR_CAT });
}
