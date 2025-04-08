use std::ptr;
use std::ffi::CStr;
use std::str;

#[derive(Debug)]
pub enum Category {
    Scheme = 0x01,
    Unreserved = 0x02,
    GenDelim = 0x04,
    SubDelim = 0x08,
    PCharSlash = 0x10,
    HexDigit = 0x20,
    Query = 0x40,
    Fragment = 0x80, // Changed to avoid duplicate discriminant
    Userinfo = 0x100,
    IPv6Char = 0x200,
}

#[derive(Debug)]
struct UrlKeyValue {
    key: String,
    value: String,
}

fn parse_query_string(begin: &str) -> Option<Vec<UrlKeyValue>> {
    let elements = begin.matches('&').count() + begin.matches(';').count() + 1;
    let mut kv: Vec<UrlKeyValue> = Vec::with_capacity(elements);

    let mut p = begin;
    for _ in 0..elements {
        if p.is_empty() {
            break;
        }

        let key_end = scan_part(p, Category::Query, '=', '\0')?;
        let has_value = p.as_bytes()[key_end] == b'=';
        let key = decode_percent(&p[..key_end]);

        let value = if has_value {
            let value_start = key_end + 1;
            let value_end = scan_part(&p[value_start..], Category::Query, '&', ';')?;
            decode_percent(&p[value_start..value_start + value_end])
        } else {
            String::new()
        };

        kv.push(UrlKeyValue { key, value });

        let next_start = scan_part(p, Category::Query, '&', ';')? + 1;
        p = &p[next_start..];
    }

    Some(kv)
}

fn scan_part(input: &str, _category: Category, delim1: char, delim2: char) -> Option<usize> {
    input.find(|c| c == delim1 || c == delim2)
}

fn decode_percent(input: &str) -> String {
    // Placeholder for percent-decoding logic
    input.to_string()
}

fn main() {
    let query_string = "key1=value1&key2=value2";
    if let Some(parsed) = parse_query_string(query_string) {
        for kv in parsed {
            println!("Key: {}, Value: {}", kv.key, kv.value);
        }
    } else {
        eprintln!("Failed to parse query string");
    }
}
