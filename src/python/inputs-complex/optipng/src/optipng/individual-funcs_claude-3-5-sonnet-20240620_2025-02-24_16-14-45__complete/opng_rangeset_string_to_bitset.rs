use std::ffi::c_void;
use std::os::raw::{c_char, c_int};
use libc::{size_t, isspace};

type opng_bitset_t = u32;

const OPNG_BITSET_ELT_MIN: c_int = 0;
const OPNG_BITSET_ELT_MAX: c_int = (std::mem::size_of::<opng_bitset_t>() * 8 - 1) as c_int;

#[no_mangle]
pub unsafe extern "C" fn opng_rangeset_string_to_bitset(str: *const c_char, end_idx: *mut size_t) -> opng_bitset_t {
    let mut result: opng_bitset_t = 0;
    let mut ptr: *const c_char = str;
    let mut state: c_int = 0;
    let mut num: c_int = 0;
    let mut num1: c_int = -1;
    let mut num2: c_int = -1;
    let mut out_of_range: bool = false;

    loop {
        while isspace(*ptr as c_int) != 0 {
            ptr = ptr.offset(1);
        }

        match state {
            0 | 2 => {
                if *ptr >= b'0' as c_char && *ptr <= b'9' as c_char {
                    num = 0;
                    while *ptr >= b'0' as c_char && *ptr <= b'9' as c_char {
                        num = 10 * num + (*ptr as c_int - b'0' as c_int);
                        if num > OPNG_BITSET_ELT_MAX {
                            out_of_range = true;
                            num = OPNG_BITSET_ELT_MAX;
                        }
                        ptr = ptr.offset(1);
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
                if *ptr == b'-' as c_char {
                    ptr = ptr.offset(1);
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
                result |= if num1 <= num2 {
                    ((1u32 << (num2 - num1 + 1)) - 1) << num1
                } else {
                    0
                };
            } else {
                out_of_range = true;
            }
        }

        if *ptr == b',' as c_char || *ptr == b';' as c_char {
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
        *end_idx = (ptr as usize - str as usize) as size_t;
    }

    if out_of_range {
        *libc::__errno_location() = 34;
    }

    result
}