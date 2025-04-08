fn opng_str2ulong(out_val: &mut u64, in_str: &str, allow_multiplier: bool) -> i32 {
    let begin_ptr = in_str.trim_start();
    let mut end_ptr = begin_ptr;
    let mut multiplier: u64 = 1;

    if let Some(first_char) = begin_ptr.chars().next() {
        if first_char.is_digit(10) {
            if let Ok(val) = begin_ptr.parse::<u64>() {
                *out_val = val;
                end_ptr = &begin_ptr[val.to_string().len()..];
            }
        }
    }

    if begin_ptr == end_ptr {
        *out_val = 0;
        return -1;
    }

    if allow_multiplier {
        if let Some(multiplier_char) = end_ptr.chars().next() {
            match multiplier_char {
                'k' | 'K' => {
                    end_ptr = &end_ptr[1..];
                    multiplier = 1024;
                }
                'M' => {
                    end_ptr = &end_ptr[1..];
                    multiplier = 1024 * 1024;
                }
                'G' => {
                    end_ptr = &end_ptr[1..];
                    multiplier = 1024 * 1024 * 1024;
                }
                _ => {}
            }
        }

        if multiplier > 1 {
            if *out_val > (u64::MAX / multiplier) {
                *out_val = u64::MAX;
            } else {
                *out_val *= multiplier;
            }
        }
    }

    if !end_ptr.trim_start().is_empty() {
        return -1;
    }

    0
}
