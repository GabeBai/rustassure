fn to_lower_char(c: char) -> char {
    // Convert char to lowercase
    c.to_lowercase().next().unwrap_or(c)
}

fn to_lower_i32(c: i32) -> i32 {
    // Assuming you want to mimic the behavior of the C tolower function
    if c >= 'A' as i32 && c <= 'Z' as i32 {
        c + ('a' as i32 - 'A' as i32)
    } else {
        c
    }
}
