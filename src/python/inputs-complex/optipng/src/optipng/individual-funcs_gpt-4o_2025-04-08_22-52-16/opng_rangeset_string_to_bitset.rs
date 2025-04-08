use std::num::IntErrorKind;
use std::error::Error;
use std::fmt;

const OPNG_BITSET_ELT_MAX: u32 = (std::mem::size_of::<u32>() * 8 - 1) as u32;

#[derive(Debug)]
struct RangeSetError {
    kind: IntErrorKind,
}

impl fmt::Display for RangeSetError {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(f, "RangeSetError: {:?}", self.kind)
    }
}

impl Error for RangeSetError {}

fn opng_rangeset_string_to_bitset(str: &str, end_idx: Option<&mut usize>) -> Result<u32, Box<dyn Error>> {
    let mut result: u32 = 0;
    let mut ptr = str.chars().peekable();
    let mut state = 0;
    let mut num1 = -1;
    let mut num2 = -1;
    let mut out_of_range = false;

    loop {
        while let Some(&c) = ptr.peek() {
            if c.is_whitespace() {
                ptr.next();
            } else {
                break;
            }
        }

        match state {
            0 | 2 => {
                if let Some(&c) = ptr.peek() {
                    if c.is_digit(10) {
                        let mut num = 0;
                        while let Some(c) = ptr.peek() {
                            if c.is_digit(10) {
                                num = 10 * num + c.to_digit(10).unwrap();
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
            }
            1 => {
                if let Some('-') = ptr.peek() {
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
                result |= ((1u32 << (num2 - num1 + 1)) - 1) << num1;
            } else {
                out_of_range = true;
            }
        }

        if let Some(&c) = ptr.peek() {
            if c == ',' || c == ';' {
                ptr.next();
                continue;
            } else {
                break;
            }
        } else {
            break;
        }
    }

    if num1 == -1 {
        if let Some(end_idx) = end_idx {
            *end_idx = 0;
        }
        return Ok(0);
    }

    if let Some(end_idx) = end_idx {
        *end_idx = str.len() - ptr.count();
    }

    if out_of_range {
        return Err(Box::new(RangeSetError { kind: IntErrorKind::PosOverflow }));
    }

    Ok(result)
}

fn main() {
    let mut end_idx = 0;
    match opng_rangeset_string_to_bitset("1-3,5", Some(&mut end_idx)) {
        Ok(bitset) => println!("Bitset: {:b}, End Index: {}", bitset, end_idx),
        Err(e) => println!("Error: {}", e),
    }
}
