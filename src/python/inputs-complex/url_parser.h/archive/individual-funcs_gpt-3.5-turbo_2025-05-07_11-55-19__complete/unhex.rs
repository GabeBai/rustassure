struct UrlKeyValue {
    key: &'static str,
    value: &'static str,
}

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

fn unhex(s: char) -> i32 {
    match s {
        '0'..='9' => s as i32 - '0' as i32,
        'A'..='F' => s as i32 - 'A' as i32 + 10,
        'a'..='f' => s as i32 - 'a' as i32 + 10,
        _ => -1,
    }
}
