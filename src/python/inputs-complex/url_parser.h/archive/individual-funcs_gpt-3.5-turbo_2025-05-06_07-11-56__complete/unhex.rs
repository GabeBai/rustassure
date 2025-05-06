#[derive(Debug)]
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

#[derive(Debug)]
struct UrlKeyValue {
    key: &'static str,
    value: &'static str,
}

fn unhex(c: char) -> i32 {
    match c {
        '0'..='9' => c as i32 - '0' as i32,
        'A'..='F' => c as i32 - 'A' as i32 + 10,
        'a'..='f' => c as i32 - 'a' as i32 + 10,
        _ => -1,
    }
}

fn main() {
    let hex_char = 'A';
    let result = unhex(hex_char);
    println!("Decimal value of {} is {}", hex_char, result);
}
