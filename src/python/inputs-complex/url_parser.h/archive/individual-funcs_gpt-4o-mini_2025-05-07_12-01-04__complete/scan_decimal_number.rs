fn scan_decimal_number(start: *mut i8) -> *mut i8 {
    let mut p = start;
    while unsafe { *p >= b'0' as i8 && *p <= b'9' as i8 } {
        p = unsafe { p.add(1) };
    }
    if p != start {
        p
    } else {
        std::ptr::null_mut()
    }
}
