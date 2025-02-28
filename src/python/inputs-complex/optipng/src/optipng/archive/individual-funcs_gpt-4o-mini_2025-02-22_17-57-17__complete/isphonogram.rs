fn is_phonogram(c: i32) -> bool {
    // Convert i32 to char, checking if it's a valid ASCII character
    if let Some(character) = std::char::from_u32(c as u32) {
        // Check if the character is an ASCII graphic character
        return character.is_ascii_graphic();
    }
    false
}
