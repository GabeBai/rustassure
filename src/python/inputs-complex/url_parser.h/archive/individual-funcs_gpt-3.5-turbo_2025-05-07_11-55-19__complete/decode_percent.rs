use std::ffi::CString;

struct UrlKeyValue {
    key: CString,
    value: CString,
}

enum Category {
    Scheme = 0x01,
    Unreserved = 0x02,
    GenDelim = 0x04,
    SubDelim = 0x08,
    PCharSlash = 0x10,
    HexDigit = 0x20,
    Query = 0x40,
    Fragment,
    Userinfo = 0x80,
    IPv6Char = 0x100,
}

fn unhex(c: &mut &str) -> Option<u8> {
    let high = match c.next() {
        Some(ch) => ch.to_digit(16),
        None => return None,
    };

    let low = match c.next() {
        Some(ch) => ch.to_digit(16),
        None => return None,
    };

    Some(((high? << 4) | low?).try_into().ok()?)
}

fn decode_percent(s: &str) -> String {
    let mut in_chars = s.chars();
    let mut out = String::new();

    while let Some(ch) = in_chars.next() {
        if ch == '%' {
            let high = unhex(&mut in_chars).unwrap_or(0);
            let low = unhex(&mut in_chars).unwrap_or(0);
            out.push((high * 16 + low) as char);
        } else {
            out.push(ch);
        }
    }

    out
}

fn main() {
    let input = "Hello%20World%21";
    let decoded = decode_percent(input);
    println!("{}", decoded);
}
