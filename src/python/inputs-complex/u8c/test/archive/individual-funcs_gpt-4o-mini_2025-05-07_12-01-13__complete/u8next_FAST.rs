fn u8next_fast(txt: &str, ch: &mut Option<i32>) -> usize {
    let mut len = 0;
    let mut val = 0;
    let mut chars = txt.chars();

    if let Some(first) = chars.next() {
        val = first as i32; // Convert char to i32
        if first > '\u{007F}' {
            if let Some(next) = chars.next() {
                val = (next as i32) & 0x3F;
                if (first as u32 & 0xF8) == 0xF0 {
                    val |= ((first as i32 & 0x07) << 6);
                } else if (first as u32 & 0xF0) == 0xE0 {
                    val |= ((first as i32 & 0x0F) << 6);
                } else {
                    val |= ((first as i32 & 0x1F) << 6);
                }
            }
            // Handle additional bytes if necessary
            if (first as u32 & 0xF8) == 0xF0 {
                if let Some(next) = chars.next() {
                    val <<= 6;
                    val |= (next as i32 & 0x3F);
                }
            } else if (first as u32 & 0xF0) == 0xE0 {
                if let Some(next) = chars.next() {
                    val <<= 6;
                    val |= (next as i32 & 0x3F);
                }
            } else {
                // Handle the case for 2-byte sequences
            }
        }
        len = 1 + txt.chars().count() - chars.count();
    }

    if let Some(ch_ref) = ch {
        *ch_ref = val;
    }
    len
}
