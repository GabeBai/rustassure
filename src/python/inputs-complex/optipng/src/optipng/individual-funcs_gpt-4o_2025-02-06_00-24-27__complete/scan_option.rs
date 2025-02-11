#![allow(unaligned_references)]
use std::ffi::CStr;
use std::str;

#[no_mangle]
#[no_mangle]
fn scan_option<'a>(
    str: &'a CStr,
    opt_buf: &mut [u8],
    opt_arg_ptr: &mut Option<&'a str>,
) -> i32 {
    let str_bytes = str.to_bytes();
    if str_bytes.is_empty() || str_bytes[0] != b'-' || str_bytes.get(1).is_none() {
        return 0;
    }

    let mut opt_len = 0;
    let mut ptr = 1; // Start after the initial '-'

    // Skip additional '-' characters
    while ptr < str_bytes.len() && str_bytes[ptr] == b'-' {
        ptr += 1;
    }

    if ptr == str_bytes.len() {
        ptr -= 1;
    }

    loop {
        if opt_len < opt_buf.len() {
            opt_buf[opt_len] = str_bytes[ptr].to_ascii_lowercase();
        }
        opt_len += 1;
        ptr += 1;

        if ptr == str_bytes.len() || str_bytes[ptr].is_ascii_whitespace() {
            while ptr < str_bytes.len() && str_bytes[ptr].is_ascii_whitespace() {
                ptr += 1;
            }
            *opt_arg_ptr = if ptr < str_bytes.len() {
                Some(str::from_utf8(&str_bytes[ptr..]).unwrap())
            } else {
                None
            };
            break;
        }

        if str_bytes[ptr] == b'=' {
            ptr += 1;
            *opt_arg_ptr = Some(str::from_utf8(&str_bytes[ptr..]).unwrap());
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
