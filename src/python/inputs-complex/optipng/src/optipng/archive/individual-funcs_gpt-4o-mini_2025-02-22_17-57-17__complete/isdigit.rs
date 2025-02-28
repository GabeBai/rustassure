fn is_digit_char(c: char) -> bool {
    c.is_digit(10) // Check if the character is a digit in base 10
}

fn is_digit_i32(c: i32) -> bool {
    // Convert i32 to char and check if it's a digit
    if let Some(c) = std::char::from_u32(c as u32) {
        c.is_digit(10)
    } else {
        false // Return false if the conversion fails
    }
}
