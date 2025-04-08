#[derive(Debug)]
enum Category {
    Scheme = 0x01,
    Unreserved = 0x02,
    GenDelim = 0x04,
    SubDelim = 0x08,
    PCharSlash = 0x10,
    HexDigit = 0x20,
    Query = 0x40,
    // Fragment is intentionally omitted to avoid duplicate value
    Userinfo = 0x80,
    IPv6Char = 0x100,
}

struct UrlKeyValue<'a> {
    key: &'a str,
    value: &'a str,
}

fn scan_decimal_number(start: &mut str) -> Option<&mut str> {
    let mut p = start;
    let mut index = 0;
    while let Some(c) = p.chars().nth(index) {
        if c.is_digit(10) {
            index += c.len_utf8();
        } else {
            break;
        }
    }
    if index > 0 {
        let (number, rest) = p.split_at_mut(index);
        Some(rest)
    } else {
        None
    }
}

fn main() {
    let mut input = String::from("123abc");
    if let Some(rest) = scan_decimal_number(&mut input) {
        println!("Remaining string: {}", rest);
    } else {
        println!("No decimal number found");
    }
}
