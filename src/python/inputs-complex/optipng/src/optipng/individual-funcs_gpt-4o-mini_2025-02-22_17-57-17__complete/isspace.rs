fn isspace(c: i32) -> bool {
    // Convert the i32 to a char, assuming c is a valid ASCII value
    if let Some(character) = std::char::from_u32(c as u32) {
        character.is_ascii_whitespace()
    } else {
        false // Return false if c is not a valid char
    }
}
