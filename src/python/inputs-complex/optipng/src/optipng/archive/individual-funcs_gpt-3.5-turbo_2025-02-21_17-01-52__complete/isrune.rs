fn isrune(_c: i32) -> bool {
    let c = std::char::from_u32(_c as u32).unwrap_or('\0');
    c.is_ascii_alphanumeric()
}
