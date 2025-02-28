fn isideogram(c: i32) -> i32 {
    // Convert i32 to char, assuming c is a valid Unicode scalar value
    if let Some(character) = std::char::from_u32(c as u32) {
        // Check if the character is of the desired type
        // Replace the condition with the appropriate check for your use case
        if character.is_ascii() { // This is just an example condition
            return 1;
        }
    }
    return 0;
}
