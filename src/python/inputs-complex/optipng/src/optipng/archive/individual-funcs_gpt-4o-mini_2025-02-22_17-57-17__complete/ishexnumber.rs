fn is_hex_number(c: i32) -> bool {
    // Convert the integer to a char
    let character = std::char::from_u32(c as u32);
    
    // Check if the character is a hexadecimal digit
    match character {
        Some(ch) => ch.is_ascii_hexdigit(),
        None => false, // If the conversion fails, return false
    }
}
