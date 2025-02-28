use std::ffi::c_void;
use std::os::raw::{c_char, c_int, c_long};
use std::ptr;

fn scan_option(str: *const c_char, opt_buf: &mut [c_char], opt_buf_size: usize, opt_arg_ptr: &mut *const c_char) -> c_int {
    let mut ptr = str;
    let mut opt_len = 0;

    if unsafe { *ptr.offset(0) } != b'-' as c_char || unsafe { *ptr.offset(1) } == 0 {
        return 0;
    }

    while unsafe { *ptr.offset(0) } == b'-' as c_char {
        ptr = unsafe { ptr.offset(1) };
    }

    if unsafe { *ptr } == 0 {
        ptr = unsafe { ptr.offset(-1) };
    }

    loop {
        if opt_len < opt_buf_size {
            opt_buf[opt_len as usize] = unsafe { (*ptr).to_ascii_lowercase() as c_char };
        }
        opt_len += 1;
        ptr = unsafe { ptr.offset(1) };

        if unsafe { *ptr } == 0 || unsafe { *ptr }.is_ascii_whitespace() {
            while unsafe { *ptr }.is_ascii_whitespace() {
                ptr = unsafe { ptr.offset(1) };
            }

            *opt_arg_ptr = if unsafe { *ptr } != 0 { ptr } else { ptr::null() };
            break;
        }

        if unsafe { *ptr } == b'=' as c_char {
            ptr = unsafe { ptr.offset(1) };
            *opt_arg_ptr = ptr;
            break;
        }
    }

    if opt_buf_size > 0 {
        if opt_len < opt_buf_size {
            opt_buf[opt_len as usize] = b'\0' as c_char;
        } else {
            opt_buf[opt_buf_size - 1] = b'\0' as c_char;
        }
    }

    1
}
