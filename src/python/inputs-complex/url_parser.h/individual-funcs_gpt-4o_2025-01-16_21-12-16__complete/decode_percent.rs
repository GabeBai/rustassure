#![allow(unaligned_references)]
#[no_mangle]
#[no_mangle]
fn unhex(c: char) -> Option<u8> {
    match c {
        '0'..='9' => Some(c as u8 - b'0'),
        'a'..='f' => Some(c as u8 - b'a' + 10),
        'A'..='F' => Some(c as u8 - b'A' + 10),
        _ => None,
    }
}

#[no_mangle]
#[no_mangle]
fn decode_percent(s: &mut String) -> Option<()> {
    let mut in_chars = s.chars().peekable();
    let mut out = String::new();

    while let Some(&c) = in_chars.peek() {
        if c == '%' {
            in_chars.next(); // consume '%'
            let high = in_chars.next().and_then(unhex)?;
            let low = in_chars.next().and_then(unhex)?;
            out.push((high * 16 + low) as char);
        } else {
            out.push(c);
            in_chars.next(); // consume the character
        }
    }

    s.clear();
    s.push_str(&out);
    Some(())
}

#[no_mangle]
#[no_mangle]
fn main() {
    let mut input = String::from("Hello%20World%21");
    if decode_percent(&mut input).is_some() {
        println!("Decoded: {}", input);
    } else {
        println!("Decoding failed.");
    }
}
