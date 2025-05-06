use std::ffi::CStr;
use std::os::raw::{c_char, c_int};

fn scan_option(str: &str, opt_buf: &mut [u8], opt_arg_ptr: &mut Option<&str>) -> c_int {
    let mut opt_len = 0;
    let mut ptr = str.chars().skip(1); // Skip the first character '-'

    if str.chars().next() != Some('-') || str.len() < 2 {
        return 0;
    }

    while ptr.next() == Some('-') {
        opt_len += 1;
    }

    if ptr.next() == None {
        ptr = ptr.take(1); // Move back one step
    }

    loop {
        if opt_len < opt_buf.len() {
            opt_buf[opt_len] = ptr.next().unwrap().to_ascii_lowercase() as u8;
        }
        opt_len += 1;

        if let Some(c) = ptr.next() {
            if c == '=' {
                *opt_arg_ptr = Some(ptr.as_str());
                break;
            } else if c.is_whitespace() {
                while let Some(c) = ptr.next() {
                    if !c.is_whitespace() {
                        *opt_arg_ptr = if c != '\0' { Some(ptr.as_str()) } else { None };
                        break;
                    }
                }
                break;
            }
        } else {
            *opt_arg_ptr = None;
            break;
        }
    }

    if !opt_buf.is_empty() {
        if opt_len < opt_buf.len() {
            opt_buf[opt_len] = b'\0';
        } else {
            opt_buf[opt_buf.len() - 1] = b'\0';
        }
    }

    1
}
