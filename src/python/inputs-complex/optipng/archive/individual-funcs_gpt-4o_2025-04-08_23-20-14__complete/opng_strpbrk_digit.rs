fn opng_strpbrk_digit(mut str: &str) -> Option<&str> {
    while !str.is_empty() {
        if str.chars().next().unwrap().is_digit(10) {
            return Some(str);
        }
        str = &str[1..];
    }
    None
}
