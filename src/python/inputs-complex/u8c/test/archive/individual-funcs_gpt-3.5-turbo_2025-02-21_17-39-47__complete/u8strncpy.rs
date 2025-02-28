fn u8strncpy<'a>(dest: &'a mut [u8], src: &'a [u8], n: usize) -> &'a mut [u8] {
    let k = n - 1;
    if n > 0 {
        dest[k] = 0;
        dest[..n].copy_from_slice(&src[..n]);
        if dest[k] & 0x80 != 0 {
            let mut i = k;
            while i > 0 && (k - i) < 3 && (dest[i] & 0xC0) == 0x80 {
                i -= 1;
            }
            match k - i {
                0 => dest[i] = 0,
                1 => {
                    if (dest[i] & 0xE0) != 0xC0 {
                        dest[i] = 0;
                    }
                }
                2 => {
                    if (dest[i] & 0xF0) != 0xE0 {
                        dest[i] = 0;
                    }
                }
                3 => {
                    if (dest[i] & 0xF8) != 0xF0 {
                        dest[i] = 0;
                    }
                }
                _ => {}
            }
        }
    }
    dest
}
