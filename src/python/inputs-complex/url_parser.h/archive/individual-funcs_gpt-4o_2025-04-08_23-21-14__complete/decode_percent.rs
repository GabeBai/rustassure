fn unhex(c: char) -> Option<u8> {
    match c {
        '0'..='9' => Some(c as u8 - b'0'),
        'a'..='f' => Some(c as u8 - b'a' + 10),
        'A'..='F' => Some(c as u8 - b'A' + 10),
        _ => None,
    }
}

fn decode_percent(s: &mut String) -> Option<()> {
    let mut in_idx = 0;
    let mut out_idx = 0;
    let bytes = unsafe { s.as_bytes_mut() };

    while in_idx < bytes.len() {
        if bytes[in_idx] == b'%' {
            if in_idx + 2 >= bytes.len() {
                return None;
            }
            let high = unhex(bytes[in_idx + 1] as char)?;
            let low = unhex(bytes[in_idx + 2] as char)?;
            bytes[out_idx] = high * 16 + low;
            in_idx += 3;
        } else {
            bytes[out_idx] = bytes[in_idx];
            in_idx += 1;
        }
        out_idx += 1;
    }

    s.truncate(out_idx);
    Some(())
}

fn main() {
    let mut s = String::from("Hello%20World%21");
    if decode_percent(&mut s).is_some() {
        println!("Decoded: {}", s);
    } else {
        println!("Decoding failed");
    }
}
