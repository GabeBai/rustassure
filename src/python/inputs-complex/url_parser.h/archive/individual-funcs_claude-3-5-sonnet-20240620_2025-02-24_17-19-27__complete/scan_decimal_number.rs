fn scan_decimal_number(start: *mut u8) -> Option<*mut u8> {
    let mut p = start;
    unsafe {
        while *p >= b'0' && *p <= b'9' {
            p = p.add(1);
        }
        if p != start {
            Some(p)
        } else {
            None
        }
    }
}