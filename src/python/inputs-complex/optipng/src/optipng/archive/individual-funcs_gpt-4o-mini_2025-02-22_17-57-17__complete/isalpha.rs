fn is_alpha(c: i32) -> bool {
    // Convert i32 to char, assuming c is a valid ASCII value
    if let Some(character) = std::char::from_u32(c as u32) {
        return character.is_ascii_alphabetic();
    }
    false
}
