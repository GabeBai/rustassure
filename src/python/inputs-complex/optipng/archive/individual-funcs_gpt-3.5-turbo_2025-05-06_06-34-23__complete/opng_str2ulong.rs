use std::os::raw::{c_char, c_ulong};
use std::ptr;

fn opng_strltrim(s: *const c_char) -> *const c_char {
    let mut ptr = s;
    while !ptr.is_null() && unsafe { *ptr } == b' ' as c_char {
        ptr = unsafe { ptr.offset(1) };
    }
    ptr
}

fn opng_str2ulong(out_val: *mut c_ulong, in_str: *const c_char, allow_multiplier: i32) -> i32 {
    let mut begin_ptr = opng_strltrim(in_str);
    let mut end_ptr = begin_ptr;
    let mut multiplier: c_ulong;

    if unsafe { *begin_ptr } >= b'0' as c_char && unsafe { *begin_ptr } <= b'9' as c_char {
        unsafe {
            *out_val = libc::strtoul(begin_ptr, &mut end_ptr as *mut *const c_char, 10);
        }
    }

    if begin_ptr == end_ptr {
        unsafe {
            *libc::__errno_location() = 22;
            *out_val = 0;
        }
        return -1;
    }

    if allow_multiplier != 0 {
        match unsafe { *end_ptr } {
            b'k' | b'K' => {
                end_ptr = unsafe { end_ptr.offset(1) };
                multiplier = 1024;
            }
            b'M' => {
                end_ptr = unsafe { end_ptr.offset(1) };
                multiplier = 1024 * 1024;
            }
            b'G' => {
                end_ptr = unsafe { end_ptr.offset(1) };
                multiplier = 1024 * 1024 * 1024;
            }
            _ => multiplier = 1,
        }

        if multiplier > 1 {
            if unsafe { *out_val } > (9223372036854775807 * 2 + 1) / multiplier {
                unsafe {
                    *libc::__errno_location() = 34;
                    *out_val = 9223372036854775807 * 2 + 1;
                }
            } else {
                unsafe {
                    *out_val *= multiplier;
                }
            }
        }
    }

    if unsafe { *opng_strltrim(end_ptr) } != 0 {
        unsafe {
            *libc::__errno_location() = 22;
        }
        return -1;
    }

    0
}
