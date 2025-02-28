fn u8next(txt: &str, ch: &mut Option<i32>) -> i32 {
    let mut len = 0;
    let mut s = txt.as_bytes();
    let first = s.get(0).copied().unwrap_or(0);
    let mut val = 0;

    if first != 0 {
        val = first as i32; // Cast to i32
        let mut index = 0;

        loop {
            match s.get(index) {
                Some(&byte) if byte < 0x80 => {
                    len = 1;
                    break;
                }
                Some(&0xC0) => {
                    len = 2;
                    index += 1;
                    if s.get(index) != Some(&0x80) {
                        len = -1; // Invalid
                        break;
                    }
                    break;
                }
                Some(&byte) if byte <= 0xC1 => {
                    len = -1; // Invalid
                    break;
                }
                Some(&byte) if byte <= 0xDF => {
                    val &= 0x1F;
                    len = 2;
                    index += 1;
                    val = (val << 6) | (s.get(index).copied().unwrap_or(0) & 0x3F) as i32;
                    break;
                }
                Some(&byte) if byte == 0xE0 => {
                    val &= 0x0F;
                    len = 3;
                    index += 1;
                    val = (val << 6) | (s.get(index).copied().unwrap_or(0) & 0x3F) as i32;
                    break;
                }
                Some(&byte) if byte <= 0xEC => {
                    val &= 0x0F;
                    len = 3;
                    index += 1;
                    val = (val << 6) | (s.get(index).copied().unwrap_or(0) & 0x3F) as i32;
                    break;
                }
                Some(&byte) if byte == 0xED => {
                    val &= 0x0F;
                    len = 3;
                    index += 1;
                    val = (val << 6) | (s.get(index).copied().unwrap_or(0) & 0x3F) as i32;
                    break;
                }
                Some(&byte) if byte <= 0xEF => {
                    val &= 0x0F;
                    len = 3;
                    index += 1;
                    val = (val << 6) | (s.get(index).copied().unwrap_or(0) & 0x3F) as i32;
                    break;
                }
                Some(&byte) if byte == 0xF0 => {
                    val &= 0x07;
                    len = 4;
                    index += 1;
                    val = (val << 6) | (s.get(index).copied().unwrap_or(0) & 0x3F) as i32;
                    break;
                }
                Some(&byte) if byte <= 0xF3 => {
                    val &= 0x07;
                    len = 4;
                    index += 1;
                    val = (val << 6) | (s.get(index).copied().unwrap_or(0) & 0x3F) as i32;
                    break;
                }
                Some(&0xF4) => {
                    val &= 0x07;
                    len = 4;
                    index += 1;
                    val = (val << 6) | (s.get(index).copied().unwrap_or(0) & 0x3F) as i32;
                    break;
                }
                _ => {
                    len = -1; // Invalid
                    break;
                }
            }
            index += 1;
        }

        if let Some(ch_value) = ch {
            *ch_value = val; // Assign the value to ch
        }
    }

    len
}
