use std::ffi::CStr;
use std::os::raw::{c_char, c_int, c_ulong};

type OpngBitset = u32;

const OPNG_BITSET_ELT_MIN: OpngBitset = 0;
const OPNG_BITSET_ELT_MAX: OpngBitset = (std::mem::size_of::<OpngBitset>() as OpngBitset * 8) - 1;

fn opng_rangeset_string_to_bitset(str: *const c_char, end_idx: *mut usize) -> OpngBitset {
    let mut result: OpngBitset = 0;
    let mut ptr = str;
    let mut state = 0;
    let mut num1 = -1;
    let mut num2 = -1;
    let mut out_of_range = false;

    unsafe {
        loop {
            while libc::isspace(*ptr as i32) != 0 {
                ptr = ptr.offset(1);
            }

            match state {
                0 | 2 => {
                    if *ptr >= b'0' && *ptr <= b'9' {
                        let mut num: OpngBitset = 0;
                        while *ptr >= b'0' && *ptr <= b'9' {
                            num = 10 * num + (*ptr - b'0') as OpngBitset;
                            if num > OPNG_BITSET_ELT_MAX {
                                out_of_range = true;
                                num = OPNG_BITSET_ELT_MAX;
                            }
                            ptr = ptr.offset(1);
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
                    if *ptr == b'-' {
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
                    out_of_range = true;
                    num2 = OPNG_BITSET_ELT_MAX as i32;
                }
                if num1 <= num2 {
                    result |= (1 << (num2 - num1) << 1) - 1 << num1;
                } else {
                    out_of_range = true;
                }
            }

            if *ptr == b',' || *ptr == b';' {
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
            *end_idx = (ptr as usize - str as usize);
        }

        if out_of_range {
            *crate::__error() = 34;
        }

        result
    }
}

fn main() {
    // Example usage
    let input_str = "1-5,10;15-20";
    let input_cstr = std::ffi::CString::new(input_str).expect("CString::new failed");
    let result = opng_rangeset_string_to_bitset(input_cstr.as_ptr(), std::ptr::null_mut());
    println!("Result: {}", result);
}
