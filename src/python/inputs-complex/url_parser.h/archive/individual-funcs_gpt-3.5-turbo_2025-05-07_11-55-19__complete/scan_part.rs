use std::ptr;

#[repr(u16)]
#[derive(Debug, Copy, Clone)]
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

const CHAR_CAT: [u16; 256] = [
    0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000,
    // Rest of the array values
];

struct UrlKeyValue {
    key: *const u8,
    value: *const u8,
}

unsafe fn scan_part(start: *mut u8, category: Category, delimiter1: u8, delimiter2: u8) -> *mut u8 {
    let mut p = start;
    loop {
        if *p == 0 || *p == delimiter1 || *p == delimiter2 {
            return p;
        }
        if CHAR_CAT[*p as usize] & category as u16 != 0 {
            p = p.offset(1);
        } else {
            return ptr::null_mut();
        }
    }
}

fn main() {
    // Example usage
    let mut input = "example string".as_bytes().to_vec();
    let result = unsafe {
        scan_part(input.as_mut_ptr(), Category::Scheme, b'/', b':')
    };
    println!("{:?}", result);
}
