fn u8strncpy<'a>(dest: &'a mut Vec<u8>, src: &'a [u8], n: usize) -> &'a mut Vec<u8> {
    let k = n.saturating_sub(1); // Use saturating_sub to avoid underflow
    if n > 0 {
        dest.resize_with(n, Default::default); // Ensure dest has enough space
        dest[k] = 0; // Null-terminate the destination
        let src_len = src.len().min(n);
        dest[..src_len].copy_from_slice(&src[..src_len]); // Copy the source to destination

        if dest[k] & 0x80 != 0 {
            let mut i = k;
            while i > 0 && (k - i) < 3 && (dest[i] & 0xC0) == 0x80 {
                i -= 1;
            }
            match k - i {
                0 => dest[i] = 0,
                1 => if (dest[i] & 0xE0) != 0xC0 { dest[i] = 0 },
                2 => if (dest[i] & 0xF0) != 0xE0 { dest[i] = 0 },
                3 => if (dest[i] & 0xF8) != 0xF0 { dest[i] = 0 },
                _ => {}
            }
        }
    }
    dest
}
