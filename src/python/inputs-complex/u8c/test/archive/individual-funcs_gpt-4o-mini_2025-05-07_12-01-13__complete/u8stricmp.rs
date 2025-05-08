fn u8next(s: &[u8], index: &mut usize) -> (usize, i32) {
    if *index >= s.len() {
        return (0, 0); // End of string
    }

    let first_byte = s[*index];
    let char_len = match first_byte {
        0..=0x7F => 1, // 1-byte character
        0xC2..=0xDF => 2, // 2-byte character
        0xE0..=0xEF => 3, // 3-byte character
        0xF0..=0xF4 => 4, // 4-byte character
        _ => {
            *index += 1; // Invalid byte, skip
            return (0, -1);
        }
    };

    if *index + char_len > s.len() {
        return (0, -1); // Invalid UTF-8 sequence
    }

    let char_bytes = &s[*index..*index + char_len];
    let char_code = match char_len {
        1 => char_bytes[0] as i32,
        2 => ((char_bytes[0] & 0x1F) as i32) << 6 | ((char_bytes[1] & 0x3F) as i32),
        3 => ((char_bytes[0] & 0x0F) as i32) << 12 | ((char_bytes[1] & 0x3F) as i32) << 6 | ((char_bytes[2] & 0x3F) as i32),
        4 => ((char_bytes[0] & 0x07) as i32) << 18 | ((char_bytes[1] & 0x3F) as i32) << 12 | ((char_bytes[2] & 0x3F) as i32) << 6 | ((char_bytes[3] & 0x3F) as i32),
        _ => -1,
    };

    *index += char_len;
    (char_len, char_code)
}

fn u8fold(cp: i32) -> i32 {
    // For simplicity, we will just convert to lowercase using Rust's char methods.
    // This is a simplified version and may not handle all Unicode cases.
    if let Some(c) = std::char::from_u32(cp as u32) {
        c.to_lowercase().next().unwrap_or(c) as i32
    } else {
        cp // Return the original code point if it's invalid
    }
}

fn u8stricmp(s: &[u8], t: &[u8]) -> i32 {
    let mut index_s = 0;
    let mut index_t = 0;

    loop {
        let (len_s, code_s) = u8next(s, &mut index_s);
        let (len_t, code_t) = u8next(t, &mut index_t);

        let folded_s = u8fold(code_s);
        let folded_t = u8fold(code_t);

        if folded_s != folded_t {
            return folded_s - folded_t;
        }

        if len_s == 0 {
            return 0; // Both strings ended
        }

        if len_s < 0 {
            return -1; // Error in string s
        }

        if len_t < 0 {
            return 1; // Error in string t
        }
    }
}

fn main() {
    let s = "Hello".as_bytes();
    let t = "hello".as_bytes();
    let result = u8stricmp(s, t);
    println!("Result: {}", result);
}
