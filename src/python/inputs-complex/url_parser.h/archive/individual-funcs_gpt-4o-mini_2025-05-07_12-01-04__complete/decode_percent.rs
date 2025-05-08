fn unhex(c: char) -> Option<u8> {
    match c {
        '0'..='9' => Some(c as u8 - b'0'),
        'A'..='F' => Some(c as u8 - b'A' + 10),
        'a'..='f' => Some(c as u8 - b'a' + 10),
        _ => None,
    }
}

fn decode_percent(s: &str) -> String {
    let mut out = String::new();
    let mut in_iter = s.chars().peekable();

    while let Some(c) = in_iter.next() {
        if c == '%' {
            let high = in_iter.next().and_then(unhex);
            let low = in_iter.next().and_then(unhex);

            match (high, low) {
                (Some(h), Some(l)) => {
                    out.push((h * 16 + l) as char);
                }
                _ => return String::new(), // Return empty string on error
            }
        } else {
            out.push(c);
        }
    }

    out
}

fn main() {
    let input = "Hello%20World%21";
    let decoded = decode_percent(input);
    println!("{}", decoded); // Output: Hello World!
}
