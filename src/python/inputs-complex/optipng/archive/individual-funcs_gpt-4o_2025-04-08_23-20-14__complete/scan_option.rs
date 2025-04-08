fn scan_option<'a>(str: &'a str, opt_buf: &mut [u8], opt_arg_ptr: &mut Option<&'a str>) -> i32 {
    let mut ptr = str;
    let mut opt_len = 0;

    if !str.starts_with('-') || str.len() < 2 {
        return 0;
    }

    ptr = &ptr[1..];
    while ptr.starts_with('-') {
        ptr = &ptr[1..];
    }

    if ptr.is_empty() {
        ptr = &str[1..];
    }

    loop {
        if opt_len < opt_buf.len() {
            opt_buf[opt_len] = ptr.chars().next().unwrap_or('\0').to_ascii_lowercase() as u8;
        }
        opt_len += 1;
        ptr = &ptr[1..];

        if ptr.is_empty() || ptr.chars().next().map_or(false, |c| c.is_whitespace()) {
            while ptr.chars().next().map_or(false, |c| c.is_whitespace()) {
                ptr = &ptr[1..];
            }
            *opt_arg_ptr = if !ptr.is_empty() { Some(ptr) } else { None };
            break;
        }

        if ptr.starts_with('=') {
            ptr = &ptr[1..];
            *opt_arg_ptr = Some(ptr);
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
