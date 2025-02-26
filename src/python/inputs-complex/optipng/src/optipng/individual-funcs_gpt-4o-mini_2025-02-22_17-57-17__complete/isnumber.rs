fn is_number(c: i32) -> i32 {
    // Convert the integer to a char
    let character = std::char::from_u32(c as u32);
    
    // Check if the character is a digit
    return if let Some(ch) = character {
        if ch.is_ascii_digit() {
            1
        } else {
            0
        }
    } else {
        0 // Return 0 if the conversion to char fails
    };
}
