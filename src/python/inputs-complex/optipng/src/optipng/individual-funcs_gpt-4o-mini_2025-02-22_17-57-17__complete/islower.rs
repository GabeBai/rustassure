fn is_lowercase(c: i32) -> bool {
    // Convert the integer to a char if it's a valid Unicode scalar value
    if let Some(character) = std::char::from_u32(c as u32) {
        return character.is_lowercase();
    }
    false
}
