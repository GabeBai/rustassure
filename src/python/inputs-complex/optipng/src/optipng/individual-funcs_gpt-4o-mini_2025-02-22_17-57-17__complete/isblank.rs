fn is_blank(c: i32) -> i32 {
    // Convert the i32 to a char, if it's a valid ASCII character
    if let Some(ch) = std::char::from_u32(c as u32) {
        return if ch.is_ascii_whitespace() { 1 } else { 0 };
    }
    // If the conversion fails, return 0 (not a blank character)
    0
}
