fn opng_str2ulong(in_str: &str, allow_multiplier: bool) -> Result<u64, i32> {
    let mut out_val: u64 = 0;
    let mut begin_ptr = in_str.trim_start();
    let mut end_ptr = begin_ptr;

    // Check if the first character is a digit
    if let Some(first_char) = begin_ptr.chars().next() {
        if first_char.is_digit(10) {
            // Parse the number
            match begin_ptr.parse::<u64>() {
                Ok(val) => {
                    out_val = val;
                    end_ptr = begin_ptr.split_whitespace().next().unwrap_or("");
                }
                Err(_) => {
                    return Err(22); // Error code for invalid input
                }
            }
        } else {
            return Err(22); // Error code for invalid input
        }
    }

    if begin_ptr == end_ptr {
        return Err(22); // Error code for invalid input
    }

    let mut multiplier: u64 = 1;

    if allow_multiplier {
        if let Some(next_char) = end_ptr.chars().next() {
            match next_char {
                'k' | 'K' => {
                    multiplier = 1024;
                    end_ptr = &end_ptr[1..];
                }
                'M' => {
                    multiplier = 1024 * 1024;
                    end_ptr = &end_ptr[1..];
                }
                'G' => {
                    multiplier = 1024 * 1024 * 1024;
                    end_ptr = &end_ptr[1..];
                }
                _ => {}
            }
        }

        if multiplier > 1 {
            if out_val > (u64::MAX / multiplier) {
                return Err(34); // Error code for overflow
            } else {
                out_val *= multiplier;
            }
        }
    }

    if !end_ptr.trim_start().is_empty() {
        return Err(22); // Error code for invalid input
    }

    Ok(out_val)
}
