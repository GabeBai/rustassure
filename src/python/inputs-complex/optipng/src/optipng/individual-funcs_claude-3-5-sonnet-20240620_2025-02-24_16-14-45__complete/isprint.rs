pub fn isprint(c: i32) -> bool {
    c.is_ascii_graphic() || c.is_ascii_whitespace()
}