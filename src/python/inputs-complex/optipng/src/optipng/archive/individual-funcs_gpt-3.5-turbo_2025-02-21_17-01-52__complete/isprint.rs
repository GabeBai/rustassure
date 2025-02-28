fn isprint(c: char) -> bool {
    c.is_ascii() && c.is_ascii_graphic()
}
