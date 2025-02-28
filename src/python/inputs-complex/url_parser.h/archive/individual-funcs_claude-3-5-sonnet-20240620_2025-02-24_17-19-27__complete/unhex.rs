fn unhex(s: *const i8) -> i32 {
    unsafe {
        let c = *s as u8;
        if c >= b'0' && c <= b'9' {
            return (c - b'0') as i32;
        }
        if c >= b'A' && c <= b'F' {
            return (c - b'A' + 10) as i32;
        }
        if c >= b'a' && c <= b'f' {
            return (c - b'a' + 10) as i32;
        }
        -1
    }
}