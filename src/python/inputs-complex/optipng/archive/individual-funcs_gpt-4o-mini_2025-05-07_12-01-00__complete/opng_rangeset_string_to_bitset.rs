use std::ptr;

const OPNG_BITSET_ELT_MIN: usize = 0;
const OPNG_BITSET_ELT_MAX: usize = (std::mem::size_of::<u32>() * 8) - 1;

pub type OpngBitsetT = u32;

pub fn opng_rangeset_string_to_bitset(str: &str, end_idx: &mut Option<usize>) -> OpngBitsetT {
    let mut result: OpngBitsetT = 0;
    let mut ptr = str.chars().peekable();
    let mut state = 0;
    let mut num1 = -1;
    let mut num2 = -1;
    let mut out_of_range = false;

    while let Some(&ch) = ptr.peek() {
        // Skip whitespace
        if ch.is_whitespace() {
            ptr.next();
            continue;
        }

        match state {
            0 | 2 => {
                if ch.is_digit(10) {
                    let mut num = 0;
                    while let Some(&digit) = ptr.peek() {
                        if digit.is_digit(10) {
                            num = 10 * num + digit.to_digit(10).unwrap() as usize;
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
                        num1 = num as i32;
                    }
                    num2 = num as i32;
                    state += 1;
                    continue;
                }
            }
            1 => {
                if ch == '-' {
                    ptr.next();
                    num2 = OPNG_BITSET_ELT_MAX as i32;
                    state += 1;
                    continue;
                }
            }
            _ => {}
        }

        if state > 0 {
            state = 0;
            if num2 > OPNG_BITSET_ELT_MAX as i32 {
                out_of_range = true;
                num2 = OPNG_BITSET_ELT_MAX as i32;
            }
            if num1 <= num2 {
                result |= if num1 <= num2 {
                    ((1u32 << (num2 - num1 + 1)) - 1) << num1 as u32
                } else {
                    0
                };
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
        if let Some(end) = end_idx {
            *end = 0;
        }
        return 0;
    }

    if let Some(end) = end_idx {
        *end = str.len() - ptr.as_str().len();
    }

    if out_of_range {
        // Set errno to 34 (ERANGE)
        std::process::exit(34);
    }

    result
}
