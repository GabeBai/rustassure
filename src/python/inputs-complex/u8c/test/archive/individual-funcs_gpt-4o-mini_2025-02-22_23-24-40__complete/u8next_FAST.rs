fn u8next_fast(txt: &str, ch: &mut i32) -> usize {
    let mut len = 0;
    let mut s = txt.as_bytes();
    let first = s[0];
    let mut val = 0;

    if first != 0 {
        val = first as i32; // Cast to i32
        let mut index = 1; // Start from the second byte

        if first > 0x7F {
            val = (s[index] & 0x3F) as i32; // Cast to i32
            index += 1;

            if (first & 0xF8) == 0xF0 {
                val |= ((first & 0x07) << 6) as i32; // Cast to i32
                val <<= 6;
                if index < s.len() {
                    val |= (s[index] & 0x3F) as i32; // Cast to i32
                }
            } else if (first & 0xF0) == 0xE0 {
                val |= ((first & 0x0F) << 6) as i32; // Cast to i32
                val <<= 6;
                if index < s.len() {
                    val |= (s[index] & 0x3F) as i32; // Cast to i32
                }
            } else {
                val |= ((first & 0x1F) << 6) as i32; // Cast to i32
            }
        }
        len = 1 + (index - 1);
    }

    *ch = val;
    len
}
