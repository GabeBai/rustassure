use std::os::raw::{c_char, c_ulong};

type OpngBitset = u32;

const OPNG_BITSET_ELT_MIN: OpngBitset = 0;
const OPNG_BITSET_ELT_MAX: OpngBitset = (std::mem::size_of::<OpngBitset>() as OpngBitset * 8) - 1;

extern "C" {
    fn isspace(c: c_char) -> i32;
    fn __errno_location() -> *mut i32;
}

fn opng_rangeset_string_to_bitset(str: *const c_char, end_idx: *mut c_ulong) -> OpngBitset {
    let mut result: OpngBitset = 0;
    let mut ptr = str;
    let mut state = 0;
    let mut num = 0;
    let mut num1 = -1;
    let mut num2 = -1;
    let mut out_of_range = 0;

    unsafe {
        loop {
            while isspace(*ptr) != 0 {
                ptr = ptr.offset(1);
            }

            match state {
                0 | 2 => {
                    if *ptr >= b'0' && *ptr <= b'9' {
                        num = 0;
                        while *ptr >= b'0' && *ptr <= b'9' {
                            num = 10 * num + (*ptr - b'0') as OpngBitset;
                            if num > OPNG_BITSET_ELT_MAX {
                                out_of_range = 1;
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
                    if *ptr == b'-' {
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
                    out_of_range = 1;
                    num2 = OPNG_BITSET_ELT_MAX;
                }
                if num1 <= num2 {
                    result |= (1 << (num2 - num1 + 1)) - 1 << num1;
                } else {
                    out_of_range = 1;
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
            *end_idx = (ptr as usize - str as usize) as c_ulong;
        }

        if out_of_range != 0 {
            *__errno_location() = 34;
        }

        result
    }
}
