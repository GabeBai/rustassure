fn iscntrl(c: i32) -> bool {
    // Convert the integer to a char, if it's a valid Unicode scalar value
    if let Some(character) = std::char::from_u32(c as u32) {
        character.is_control()
    } else {
        false // Return false for invalid Unicode scalar values
    }
}
