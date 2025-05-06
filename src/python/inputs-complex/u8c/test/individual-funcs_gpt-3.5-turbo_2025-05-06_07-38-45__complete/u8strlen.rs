fn u8strlen(s: &str) -> usize {
    s.chars().filter(|c| !c.is_ascii_control()).count()
}
