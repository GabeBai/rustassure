use std::os::raw::{c_char, c_ulong};
use std::ffi::CStr;

fn opng_strltrim(in_str: &str) -> &str {
    in_str.trim_start()
}

fn opng_str2ulong(out_val: &mut c_ulong, in_str: &str, allow_multiplier: bool) -> i32 {
    let mut begin_ptr = opng_strltrim(in_str);
    let mut end_ptr: *const c_char = begin_ptr.as_ptr();
    let mut multiplier: c_ulong;

    if unsafe { *begin_ptr.as_bytes().get(0).unwrap_or(&0) as char } >= '0' && unsafe { *begin_ptr.as_bytes().get(0).unwrap_or(&0) as char } <= '9' {
        unsafe {
            *out_val = libc::strtoul(begin_ptr.as_ptr(), &mut end_ptr as *mut *const c_char, 10);
        }
    }

    if begin_ptr == unsafe { CStr::from_ptr(end_ptr).to_str().unwrap() } {
        unsafe {
            *libc::__errno_location() = 22;
            *out_val = 0;
        }
        return -1;
    }

    if allow_multiplier {
        match unsafe { CStr::from_ptr(end_ptr).to_str().unwrap().chars().next() } {
            Some('k') | Some('K') => {
                end_ptr = unsafe { end_ptr.offset(1) };
                multiplier = 1024;
            }
            Some('M') => {
                end_ptr = unsafe { end_ptr.offset(1) };
                multiplier = 1024 * 1024;
            }
            Some('G') => {
                end_ptr = unsafe { end_ptr.offset(1) };
                multiplier = 1024 * 1024 * 1024;
            }
            _ => multiplier = 1,
        }

        if multiplier > 1 {
            if *out_val > (9223372036854775807 * 2 + 1) / multiplier {
                unsafe {
                    *libc::__errno_location() = 34;
                    *out_val = 9223372036854775807 * 2 + 1;
                }
            } else {
                *out_val *= multiplier;
            }
        }
    }

    if !unsafe { CStr::from_ptr(opng_strltrim(unsafe { CStr::from_ptr(end_ptr).to_str().unwrap() })).to_str().unwrap().is_empty() } {
        unsafe {
            *libc::__errno_location() = 22;
            return -1;
        }
    }

    0
}
