fn scan_option<'a>(str: &'a str, opt_buf: &mut [char], opt_arg_ptr: &mut Option<&'a str>) -> i32 {
    let mut ptr = str;
    let mut opt_len = 0;

    if !ptr.starts_with('-') || ptr.len() < 2 {
        return 0;
    }

    ptr = &ptr[1..];
    while ptr.starts_with('-') {
        ptr = &ptr[1..];
    }

    if ptr.is_empty() {
        ptr = &ptr[..1];
    }

    for c in ptr.chars() {
        if opt_len < opt_buf.len() {
            opt_buf[opt_len] = c.to_ascii_lowercase();
        }
        opt_len += 1;

        if c.is_whitespace() {
            ptr = ptr.trim_start();
            *opt_arg_ptr = if !ptr.is_empty() { Some(ptr) } else { None };
            break;
        }

        if c == '=' {
            ptr = &ptr[1..];
            *opt_arg_ptr = Some(ptr);
            break;
        }
    }

    if !opt_buf.is_empty() {
        if opt_len < opt_buf.len() {
            opt_buf[opt_len] = '\0';
        } else {
            opt_buf[opt_buf.len() - 1] = '\0';
        }
    }

    1
}
