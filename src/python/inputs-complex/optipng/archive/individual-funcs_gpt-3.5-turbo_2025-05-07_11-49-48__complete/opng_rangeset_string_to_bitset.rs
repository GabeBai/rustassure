use std::os::raw::{c_char, c_ulong};
use std::convert::TryInto;

const OPNG_BITSET_ELT_MIN: u32 = 0;
const OPNG_BITSET_ELT_MAX: u32 = (std::mem::size_of::<u32>() as u32 * 8) - 1;

const _ISupper: u16 = if 0 < 8 { (1 << 0) << 8 } else { (1 << 0) >> 8 };
const _ISlower: u16 = if 1 < 8 { (1 << 1) << 8 } else { (1 << 1) >> 8 };
const _ISalpha: u16 = if 2 < 8 { (1 << 2) << 8 } else { (1 << 2) >> 8 };
const _ISdigit: u16 = if 3 < 8 { (1 << 3) << 8 } else { (1 << 3) >> 8 };
const _ISxdigit: u16 = if 4 < 8 { (1 << 4) << 8 } else { (1 << 4) >> 8 };
const _ISspace: u16 = if 5 < 8 { (1 << 5) << 8 } else { (1 << 5) >> 8 };
const _ISprint: u16 = if 6 < 8 { (1 << 6) << 8 } else { (1 << 6) >> 8 };
const _ISgraph: u16 = if 7 < 8 { (1 << 7) << 8 } else { (1 << 7) >> 8 };
const _ISblank: u16 = if 8 < 8 { (1 << 8) << 8 } else { (1 << 8) >> 8 };
const _IScntrl: u16 = if 9 < 8 { (1 << 9) << 8 } else { (1 << 9) >> 8 };
const _ISpunct: u16 = if 10 < 8 { (1 << 10) << 8 } else { (1 << 10) >> 8 };
const _ISalnum: u16 = if 11 < 8 { (1 << 11) << 8 } else { (1 << 11) >> 8 };

extern "C" {
    fn __ctype_b_loc() -> *const *const u16;
    fn __errno_location() -> *mut i32;
}

fn opng_rangeset_string_to_bitset(str: *const c_char, end_idx: *mut c_ulong) -> u32 {
    let mut result: u32 = 0;
    let mut ptr: *const c_char = str;
    let mut state: i32 = 0;
    let mut num: i32;
    let mut num1: i32 = -1;
    let mut num2: i32 = -1;
    let mut out_of_range: i32 = 0;

    unsafe {
        loop {
            while (*__ctype_b_loc())[(*ptr as i32) as usize] & _ISspace != 0 {
                ptr = ptr.offset(1);
            }

            match state {
                0 | 2 => {
                    if *ptr >= b'0'.try_into().unwrap() && *ptr <= b'9'.try_into().unwrap() {
                        num = 0;
                        loop {
                            num = 10 * num + (*ptr - b'0' as i8) as i32;
                            if num > OPNG_BITSET_ELT_MAX as i32 {
                                out_of_range = 1;
                                num = OPNG_BITSET_ELT_MAX as i32;
                            }
                            ptr = ptr.offset(1);
                            if *ptr < b'0'.try_into().unwrap() || *ptr > b'9'.try_into().unwrap() {
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
                    if *ptr == b'-' as i8 {
                        ptr = ptr.offset(1);
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
                    out_of_range = 1;
                    num2 = OPNG_BITSET_ELT_MAX as i32;
                }
                if num1 <= num2 {
                    result |= if num1 <= num2 {
                        (1 << (num2 - num1) << 1) - 1 << num1
                    } else {
                        0
                    };
                } else {
                    out_of_range = 1;
                }
            }

            if *ptr == b',' as i8 || *ptr == b';' as i8 {
                ptr = ptr.offset(1);
                continue;
            } else {
                break;
            }
        }

        if num1 == -1 {
            if !end_idx.is_null() {
                *end_idx = 0;
            }
            return 0;
        }

        if !end_idx.is_null() {
            *end_idx = (ptr as usize - str as usize) as c_ulong;
        }

        if out_of_range != 0 {
            *__errno_location() = 34;
        }

        result
    }
}

fn main() {
    // Example usage
    let input_str = "1-5, 10-15; 20-25";
    let mut end_idx: c_ulong = 0;
    let result = opng_rangeset_string_to_bitset(input_str.as_ptr() as *const c_char, &mut end_idx);
    println!("Result: {}", result);
    println!("End Index: {}", end_idx);
}
