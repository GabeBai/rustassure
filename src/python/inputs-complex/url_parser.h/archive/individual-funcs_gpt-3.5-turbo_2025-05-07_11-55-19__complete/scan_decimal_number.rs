fn scan_decimal_number(start: &mut [u8]) -> Option<&[u8]> {
    let mut p = start;
    while !p.is_empty() && (*p >= b'0' && *p <= b'9') {
        p = &mut p[1..];
    }
    if p != start {
        Some(&start[..start.len() - p.len()])
    } else {
        None
    }
}
