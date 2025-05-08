fn opng_str2ulong(in_str: &str, allow_multiplier: bool) -> Result<u64, String> {
    let begin_ptr = in_str.trim_start();
    let mut out_val: u64 = 0;
    let mut end_ptr = begin_ptr;

    // Check if the first character is a digit
    if let Some(first_char) = begin_ptr.chars().next() {
        if first_char.is_digit(10) {
            // Parse the number
            out_val = match end_ptr.parse::<u64>() {
                Ok(val) => val,
                Err(_) => return Err("Invalid number".to_string()),
            };
        } else {
            return Err("Input does not start with a digit".to_string());
        }
    }

    // If no valid number was found
    if begin_ptr == end_ptr {
        return Err("No valid number found".to_string());
    }

    if allow_multiplier {
        // Check for multipliers
        if let Some(multiplier_char) = end_ptr.chars().next() {
            let multiplier: u64 = match multiplier_char {
                'k' | 'K' => 1024,
                'M' => 1024 * 1024,
                'G' => 1024 * 1024 * 1024,
                _ => 1,
            };
            end_ptr = &end_ptr[1..]; // Move past the multiplier character

            // Check for overflow
            if out_val > (u64::MAX / multiplier) {
                return Err("Value too large".to_string());
            }
            out_val *= multiplier;
        }
    }

    // Check if there are any non-whitespace characters left
    if !end_ptr.trim_start().is_empty() {
        return Err("Extra characters after number".to_string());
    }

    Ok(out_val)
}
