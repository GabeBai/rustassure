#![allow(unaligned_references)]
#[derive(Debug)]
enum Category {
    Scheme = 0x01,
    Unreserved = 0x02,
    GenDelim = 0x04,
    SubDelim = 0x08,
    PCharSlash = 0x10,
    HexDigit = 0x20,
    Query = 0x40,
    Fragment = 0x80, // Changed to a unique value
    Userinfo = 0x100,
    IPv6Char = 0x200,
}

#[repr(C, packed)]struct UrlKeyValue {
    key: String,
    value: String,
}

#[no_mangle]
#[no_mangle]
fn scan_decimal_number(start: &str) -> Option<&str> {
    let mut p = start;
    while let Some(c) = p.chars().next() {
        if c.is_digit(10) {
            p = &p[1..];
        } else {
            break;
        }
    }
    if p != start {
        Some(p)
    } else {
        None
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    let category = Category::Query;
    println!("{:?}", category);

    let url_kv = UrlKeyValue {
        key: "example".to_string(),
        value: "value".to_string(),
    };
    println!("Key: {}, Value: {}", url_kv.key, url_kv.value);

    let number_str = "123abc";
    if let Some(rest) = scan_decimal_number(number_str) {
        println!("Remaining string: {}", rest);
    } else {
        println!("No decimal number found");
    }
}
