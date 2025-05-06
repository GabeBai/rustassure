use std::collections::HashMap;

#[derive(Debug, PartialEq, Eq)]
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

fn fill(value: u8, alnum: &str, special: &str) -> HashMap<u8, u8> {
    let mut char_cat: HashMap<u8, u8> = HashMap::new();

    for ch in alnum.bytes() {
        char_cat.insert(ch, char_cat.get(&ch).unwrap_or(&0) | value);
    }

    for ch in special.bytes() {
        char_cat.insert(ch, char_cat.get(&ch).unwrap_or(&0) | value);
    }

    char_cat
}

fn main() {
    let mut char_cat = [0u8; 256];

    let categories = [
        (Category::Scheme as u8, "scheme characters"),
        (Category::Unreserved as u8, "unreserved characters"),
        (Category::GenDelim as u8, "general delimiters"),
        (Category::SubDelim as u8, "sub-delimiters"),
        (Category::PCharSlash as u8, "PChar slash"),
        (Category::HexDigit as u8, "hexadecimal digits"),
        (Category::Query as u8, "query characters"),
        (Category::Fragment as u8, "fragment characters"),
        (Category::Userinfo as u8, "userinfo characters"),
        (Category::IPv6Char as u8, "IPv6 characters"),
    ];

    for (value, chars) in categories.iter() {
        let (alnum, special) = match chars {
            &"scheme characters" => ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-._~", ""),
            &"unreserved characters" => ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-._~", ""),
            &"general delimiters" => (":/?#[]@", ""),
            &"sub-delimiters" => ("!$&'()*+,;=", ""),
            &"PChar slash" => ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-._~:@", "/"),
            &"hexadecimal digits" => ("0123456789ABCDEFabcdef", ""),
            &"query characters" => ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-._~:/?#[]@!$&'()*+,;=", ""),
            &"fragment characters" => ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-._~:/?#[]@!$&'()*+,;=", ""),
            &"userinfo characters" => ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-._~:&=+$,", ""),
            &"IPv6 characters" => ("0123456789ABCDEFabcdef:", ""),
            _ => ("", ""),
        };

        let char_map = fill(*value, alnum, special);

        for (ch, cat) in char_map {
            char_cat[ch as usize] |= cat;
        }
    }

    println!("{:?}", char_cat);
}
