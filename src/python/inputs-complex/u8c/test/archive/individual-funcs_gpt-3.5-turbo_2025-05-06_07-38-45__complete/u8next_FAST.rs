fn u8next_FAST(txt: &str, ch: &mut i32) -> i32 {
    let mut len = 0;
    let mut s = txt.as_bytes();
    let first = s.get(0).cloned().unwrap_or(0);
    let mut val = 0;

    if first != 0 {
        val = first as i32;
        if first > 0x7F {
            val = s.get(1).cloned().unwrap_or(0) as i32 & 0x3F;
            if (first & 0xF8) == 0xF0 {
                val |= (first & 0x07) << 6;
                s = &s[1..];
            } else if (first & 0xF0) == 0xE0 {
                val |= (first & 0x0F) << 6;
                s = &s[1..];
            } else {
                val |= (first & 0x1F) << 6;
            }

            if let Some(next) = s.get(1).cloned() {
                s = &s[1..];
                val <<= 6;
                val |= next as i32 & 0x3F;
            }

            if let Some(next) = s.get(1).cloned() {
                s = &s[1..];
                val <<= 6;
                val |= next as i32 & 0x3F;
            }
        }
        len = 1 + s.len();
    }

    if let Some(ch) = ch {
        *ch = val;
    }

    len as i32
}
