fn opng_strpbrk_digit(str: &str) -> Option<&str> {
    for (i, c) in str.chars().enumerate() {
        if c.is_ascii_digit() {
            return Some(&str[i..]);
        }
    }
    None
}
