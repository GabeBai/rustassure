fn decode_percent(s: &mut Vec<u8>) -> Option<&[u8]> {
    let mut in_index = 0;
    let mut out_index = 0;
    let len = s.len();
    
    while in_index < len {
        if s[in_index] == b'%' {
            in_index += 1;
            if in_index >= len {
                return None;
            }
            let high = unhex(s[in_index] as char)?;
            in_index += 1;
            if in_index >= len {
                return None;
            }
            let low = unhex(s[in_index] as char)?;
            if low < 0 {
                return None;
            }
            s[out_index] = (high * 16 + low) as u8;
            out_index += 1;
            in_index += 1;
        } else {
            s[out_index] = s[in_index];
            out_index += 1;
            in_index += 1;
        }
    }
    s.truncate(out_index);
    s.push(0); // Null-terminate
    Some(&s[..])
}

fn unhex(c: char) -> Option<i32> {
    match c {
        '0'..='9' => Some(c as i32 - '0' as i32),
        'A'..='F' => Some(c as i32 - 'A' as i32 + 10),
        'a'..='f' => Some(c as i32 - 'a' as i32 + 10),
        _ => None,
    }
}
