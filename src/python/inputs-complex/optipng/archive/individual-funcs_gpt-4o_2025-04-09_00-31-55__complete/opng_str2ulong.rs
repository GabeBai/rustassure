use std::num::ParseIntError;

fn opng_str2ulong(in_str: &str, allow_multiplier: bool) -> Result<u64, String> {
    let trimmed_str = in_str.trim_start();
    let mut end_ptr = 0;
    let mut out_val: u64 = match trimmed_str.parse::<u64>() {
        Ok(val) => {
            end_ptr = trimmed_str.len();
            val
        }
        Err(_) => return Err("Invalid number format".to_string()),
    };

    if allow_multiplier {
        let multiplier = match trimmed_str.chars().nth(end_ptr) {
            Some('k') | Some('K') => {
                end_ptr += 1;
                1024
            }
            Some('M') => {
                end_ptr += 1;
                1024 * 1024
            }
            Some('G') => {
                end_ptr += 1;
                1024 * 1024 * 1024
            }
            _ => 1,
        };

        if multiplier > 1 {
            if out_val > u64::MAX / multiplier {
                return Err("Overflow error".to_string());
            }
            out_val *= multiplier;
        }
    }

    if trimmed_str[end_ptr..].trim_start().is_empty() {
        Ok(out_val)
    } else {
        Err("Invalid characters after number".to_string())
    }
}

fn main() {
    match opng_str2ulong("1234K", true) {
        Ok(val) => println!("Parsed value: {}", val),
        Err(e) => println!("Error: {}", e),
    }
}
