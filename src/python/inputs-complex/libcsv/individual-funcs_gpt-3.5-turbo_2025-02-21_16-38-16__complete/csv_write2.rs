fn csv_write2(dest: &mut [u8], src: &[u8], quote: u8) -> usize {
    let mut cdest = dest;
    let mut csrc = src;
    let mut chars = 0;

    if src.is_empty() {
        return 0;
    }

    let dest_size = dest.len();
    if dest_size == 0 {
        return 0;
    }

    if dest_size > 0 {
        cdest[0] = quote;
        cdest = &mut cdest[1..];
        chars += 1;
    }

    while !csrc.is_empty() {
        if csrc[0] == quote {
            if dest_size > chars {
                cdest[0] = quote;
                cdest = &mut cdest[1..];
                chars += 1;
            }
            chars += 1;
        }

        if dest_size > chars {
            cdest[0] = csrc[0];
            cdest = &mut cdest[1..];
            chars += 1;
        }
        chars += 1;

        csrc = &csrc[1..];
    }

    if dest_size > chars {
        cdest[0] = quote;
        chars += 1;
    }

    chars
}
