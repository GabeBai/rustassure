fn isrune(c: i32) -> i32 {
    // Convert the i32 to a char if it's a valid ASCII value
    if c >= 0 && c <= 127 {
        return 1; // ASCII character
    }
    return 0; // Not an ASCII character
}
