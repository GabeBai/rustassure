fn unhex(s: &str) -> i32 {
    let c = s.chars().next().unwrap_or('\0');
    if c >= '0' && c <= '9' {
        return (c as i32) - ('0' as i32);
    }
    if c >= 'A' && c <= 'F' {
        return (c as i32) - ('A' as i32) + 10;
    }
    if c >= 'a' && c <= 'f' {
        return (c as i32) - ('a' as i32) + 10;
    }
    -1
}
