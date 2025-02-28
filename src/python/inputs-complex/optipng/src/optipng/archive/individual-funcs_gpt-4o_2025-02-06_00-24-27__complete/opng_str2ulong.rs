#![allow(unaligned_references)]
use std::num::ParseIntError;
use std::str::FromStr;

#[no_mangle]
#[no_mangle]
fn opng_str2ulong(in_str: &str, allow_multiplier: bool) -> Result<u64, String> {
    let trimmed_str = in_str.trim_start();
    let mut out_val: u64 = 0;

    if let Some(first_char) = trimmed_str.chars().next() {
        if first_char.is_digit(10) {
            match u64::from_str(trimmed_str) {
                Ok(val) => out_val = val,
                Err(_) => return Err("Invalid number format".to_string()),
            }
        } else {
            return Err("Invalid number format".to_string());
        }
    } else {
        return Err("Invalid number format".to_string());
    }

    let mut end_ptr = trimmed_str;
    if allow_multiplier {
        let multiplier = match end_ptr.chars().last() {
            Some('k') | Some('K') => {
                end_ptr = &end_ptr[..end_ptr.len() - 1];
                1024
            }
            Some('M') => {
                end_ptr = &end_ptr[..end_ptr.len() - 1];
                1024 * 1024
            }
            Some('G') => {
                end_ptr = &end_ptr[..end_ptr.len() - 1];
                1024 * 1024 * 1024
            }
            _ => 1,
        };

        if multiplier > 1 {
            if out_val > (u64::MAX / multiplier as u64) {
                return Err("Value too large".to_string());
            } else {
                out_val *= multiplier as u64;
            }
        }
    }

    if end_ptr.trim_start().is_empty() {
        Ok(out_val)
    } else {
        Err("Invalid number format".to_string())
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    match opng_str2ulong("1234K", true) {
        Ok(val) => println!("Parsed value: {}", val),
        Err(e) => println!("Error: {}", e),
    }
}
