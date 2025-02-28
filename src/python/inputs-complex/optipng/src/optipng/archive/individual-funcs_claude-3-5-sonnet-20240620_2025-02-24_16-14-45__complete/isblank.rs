pub fn isblank(c: i32) -> bool {
    c.is_ascii_whitespace() && (c == b' ' as i32 || c == b'\t' as i32)
}