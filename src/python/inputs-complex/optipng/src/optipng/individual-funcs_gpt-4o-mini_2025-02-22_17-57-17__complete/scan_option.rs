use std::ffi::CStr;
use std::os::raw::c_char;

fn scan_option(str: *const c_char, opt_buf: &mut [u8], opt_buf_size: usize, opt_arg_ptr: &mut *const c_char) -> i32 {
    let c_str = unsafe { CStr::from_ptr(str) };
    let str_slice = c_str.to_str().unwrap_or("");
    
    if str_slice.is_empty() || str_slice.chars().next() != Some('-') {
        return 0;
    }

    let mut opt_len = 0;
    let mut ptr = str_slice[1..].chars();

    while let Some(c) = ptr.next() {
        if c == '-' {
            continue;
        }
        if opt_len < opt_buf_size {
            opt_buf[opt_len] = c.to_ascii_lowercase() as u8;
        }
        opt_len += 1;

        if c == '\0' || c.is_whitespace() {
            while let Some(next_c) = ptr.next() {
                if !next_c.is_whitespace() {
                    *opt_arg_ptr = if next_c != '\0' { ptr.as_str().as_ptr() as *const c_char } else { std::ptr::null() };
                    break;
                }
            }
            break;
        }
        if c == '=' {
            *opt_arg_ptr = ptr.as_str().as_ptr() as *const c_char;
            break;
        }
    }

    if opt_buf_size > 0 {
        if opt_len < opt_buf_size {
            opt_buf[opt_len] = b'\0';
        } else {
            opt_buf[opt_buf_size - 1] = b'\0';
        }
    }
    1
}
