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

fn unhex(c: char) -> Option<u8> {
    c.to_digit(16).map(|d| d as u8)
}

fn decode_percent(s: &str) -> String {
    let mut in_chars = s.chars();
    let mut out = String::new();

    while let Some(c) = in_chars.next() {
        if c == '%' {
            let high = unhex(in_chars.next()?)?;
            let low = unhex(in_chars.next()?)?;
            out.push((high * 16 + low) as char);
        } else {
            out.push(c);
        }
    }

    out
}

fn main() {
    let input = "Hello%20World%21";
    let decoded = decode_percent(input);
    println!("{}", decoded);
}
