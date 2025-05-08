use std::ffi::CStr;
use std::os::raw::c_char;

fn scan_option(str: &CStr, opt_buf: &mut [c_char], opt_buf_size: usize, opt_arg_ptr: &mut *const c_char) -> i32 {
    let c_str = str.to_bytes();
    if c_str.is_empty() || c_str[0] != b'-' {
        return 0;
    }

    let mut opt_len = 0;
    let mut ptr = &c_str[1..]; // Skip the first character

    while !ptr.is_empty() && ptr[0] == b'-' {
        ptr = &ptr[1..]; // Skip additional dashes
    }

    if ptr.is_empty() {
        ptr = &c_str[c_str.len() - 1..]; // Point to the last character
    }

    loop {
        if opt_len < opt_buf_size {
            opt_buf[opt_len] = ptr[0] as c_char; // Convert to c_char
        }
        opt_len += 1;

        if ptr.len() == 1 || is_space(ptr[0]) {
            while !ptr.is_empty() && is_space(ptr[0]) {
                ptr = &ptr[1..]; // Skip spaces
            }
            *opt_arg_ptr = if !ptr.is_empty() { ptr.as_ptr() as *const c_char } else { std::ptr::null() };
            break;
        }

        if ptr[0] == b'=' {
            ptr = &ptr[1..]; // Skip the '=' character
            *opt_arg_ptr = ptr.as_ptr() as *const c_char;
            break;
        }

        ptr = &ptr[1..]; // Move to the next character
    }

    if opt_buf_size > 0 {
        if opt_len < opt_buf_size {
            opt_buf[opt_len] = 0; // Null-terminate
        } else {
            opt_buf[opt_buf_size - 1] = 0; // Null-terminate
        }
    }

    1
}

fn is_space(c: u8) -> bool {
    c.is_ascii_whitespace()
}
