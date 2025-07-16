use std::ffi::CStr;
use std::os::raw::c_char;

fn r(
    str: *const c_char,
    opt_buf: *mut c_char,
    opt_buf_size: usize,
    opt_arg_ptr: *mut *const c_char,
) -> i32 {
    let str = unsafe { CStr::from_ptr(str) }.to_str().unwrap();
    let mut opt_buf = unsafe { std::slice::from_raw_parts_mut(opt_buf as *mut u8, opt_buf_size) };

    if !str.starts_with('-') || str.len() == 1 {
        return 0;
    }

    let mut opt_len = 0;
    //+1
    let mut ptr = str[1..].trim_start_matches('-');

    if ptr.is_empty() {
        ptr = &str[str.len() - 1..];
    }

    for (i, c) in ptr.char_indices() {
        if opt_len < opt_buf_size {
            opt_buf[opt_len] = c.to_ascii_lowercase() as u8;
        }
        opt_len += 1;

        if i == ptr.len() - 1 || c.is_whitespace() {
            //+2
            let remaining = &ptr[i + 1..].trim_start();
            unsafe {
                *opt_arg_ptr = if remaining.is_empty() {
                    std::ptr::null()
                } else {
                    remaining.as_ptr() as *const c_char
                };
            }
            break;
        }

        if c == '=' {
            unsafe {
                //+2
                *opt_arg_ptr = ptr[i + 1..].as_ptr() as *const c_char;
            }
            break;
        }
    }

    if opt_buf_size > 0 {
        if opt_len < opt_buf_size {
            opt_buf[opt_len] = 0;
        } else {
            opt_buf[opt_buf_size - 1] = 0;
        }
    }
    1
}

fn main() {
    
}