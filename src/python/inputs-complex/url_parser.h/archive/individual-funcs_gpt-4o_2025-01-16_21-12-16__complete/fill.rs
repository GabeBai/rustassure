#![allow(unaligned_references)]
use bitflags::bitflags;

bitflags! {
    struct Category: u16 {
        const SCHEME = 0x01;
        const UNRESERVED = 0x02;
        const GEN_DELIM = 0x04;
        const SUB_DELIM = 0x08;
        const PCHAR_SLASH = 0x10;
        const HEX_DIGIT = 0x20;
        const QUERY = 0x40;
        const FRAGMENT = 0x40;
        const USERINFO = 0x80;
        const IPV6_CHAR = 0x100;
    }
}

#[no_mangle]
#[no_mangle]
fn fill(value: Category, alnum: &str, special: &str, char_cat: &mut [u8; 256]) {
    for &byte in alnum.as_bytes() {
        char_cat[byte as usize] |= value.bits() as u8;
    }
    for &byte in special.as_bytes() {
        char_cat[byte as usize] |= value.bits() as u8;
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    let mut char_cat = [0u8; 256];
    
    // Example usage
    fill(Category::SCHEME, "abc", "123", &mut char_cat);
    // You can add more calls to `fill` with different categories and character sets
}
