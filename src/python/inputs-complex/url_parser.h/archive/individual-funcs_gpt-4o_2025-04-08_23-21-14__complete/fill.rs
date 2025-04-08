struct Category {
    bits: u32,
}

impl Category {
    const SCHEME: u32 = 0x01;
    const UNRESERVED: u32 = 0x02;
    const GEN_DELIM: u32 = 0x04;
    const SUB_DELIM: u32 = 0x08;
    const PCHAR_SLASH: u32 = 0x10;
    const HEX_DIGIT: u32 = 0x20;
    const QUERY: u32 = 0x40;
    const FRAGMENT: u32 = 0x40; // Same value as QUERY
    const USERINFO: u32 = 0x80;
    const IPV6_CHAR: u32 = 0x100;
}

fn fill(value: u32, alnum: &str, special: &str, char_cat: &mut [u32; 256]) {
    for &byte in alnum.as_bytes() {
        char_cat[byte as usize] |= value;
    }
    for &byte in special.as_bytes() {
        char_cat[byte as usize] |= value;
    }
}

fn main() {
    let mut char_cat = [0u32; 256];

    // Example usage
    fill(Category::SCHEME, "abc", "!@#", &mut char_cat);
    // Add more calls to `fill` as needed
}
