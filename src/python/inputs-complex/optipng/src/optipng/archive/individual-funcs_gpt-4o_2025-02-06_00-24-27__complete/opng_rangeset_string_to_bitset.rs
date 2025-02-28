#![allow(unaligned_references)]
use std::error::Error;
use std::num::IntErrorKind;
use std::str::FromStr;

type OpngBitsetT = u32; // Assuming opng_bitset_t is a 32-bit unsigned integer

const OPNG_BITSET_ELT_MIN: i32 = 0;
const OPNG_BITSET_ELT_MAX: i32 = (std::mem::size_of::<OpngBitsetT>() * 8 - 1) as i32;

#[no_mangle]
#[no_mangle]
fn opng_rangeset_string_to_bitset(s: &str) -> Result<(OpngBitsetT, usize), Box<dyn Error>> {
    let mut result: OpngBitsetT = 0;
    let mut ptr = s.chars().peekable();
    let mut state = 0;
    let mut num1 = -1;
    let mut num2 = -1;
    let mut out_of_range = false;

    while let Some(&ch) = ptr.peek() {
        if ch.is_whitespace() {
            ptr.next();
            continue;
        }

        match state {
            0 | 2 => {
                if ch.is_digit(10) {
                    let mut num = 0;
                    while let Some(&ch) = ptr.peek() {
                        if let Some(digit) = ch.to_digit(10) {
                            num = 10 * num + digit as i32;
                            if num > OPNG_BITSET_ELT_MAX {
                                out_of_range = true;
                                num = OPNG_BITSET_ELT_MAX;
                            }
                            ptr.next();
                        } else {
                            break;
                        }
                    }
                    if state == 0 {
                        num1 = num;
                    }
                    num2 = num;
                    state += 1;
                    continue;
                }
            }
            1 => {
                if ch == '-' {
                    ptr.next();
                    num2 = OPNG_BITSET_ELT_MAX;
                    state += 1;
                    continue;
                }
            }
            _ => {}
        }

        if state > 0 {
            state = 0;
            if num2 > OPNG_BITSET_ELT_MAX {
                out_of_range = true;
                num2 = OPNG_BITSET_ELT_MAX;
            }
            if num1 <= num2 {
                result |= ((1u32 << (num2 - num1 + 1)) - 1) << num1;
            } else {
                out_of_range = true;
            }
        }

        if ch == ',' || ch == ';' {
            ptr.next();
            continue;
        } else {
            break;
        }
    }

    if num1 == -1 {
        return Ok((0, 0));
    }

    let end_idx = s.len() - ptr.count();
    if out_of_range {
        return Err(Box::new(std::io::Error::new(std::io::ErrorKind::InvalidInput, "Out of range")));
    }

    Ok((result, end_idx))
}

#[no_mangle]
#[no_mangle]
fn main() {
    match opng_rangeset_string_to_bitset("0-3,5,7-10") {
        Ok((bitset, end_idx)) => {
            println!("Bitset: {:b}, End Index: {}", bitset, end_idx);
        }
        Err(e) => {
            println!("Error: {}", e);
        }
    }
}
