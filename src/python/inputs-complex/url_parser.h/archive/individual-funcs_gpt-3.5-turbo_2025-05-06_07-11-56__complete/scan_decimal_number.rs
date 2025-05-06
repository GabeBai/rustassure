fn scan_decimal_number(start: &str) -> Option<&str> {
    for (i, c) in start.char_indices() {
        if !c.is_ascii_digit() {
            if i > 0 {
                return Some(&start[..i]);
            } else {
                return None;
            }
        }
    }
    Some(start)
}
