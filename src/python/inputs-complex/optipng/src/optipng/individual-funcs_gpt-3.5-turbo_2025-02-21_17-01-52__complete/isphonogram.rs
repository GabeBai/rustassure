fn isphonogram(_c: i32) -> bool {
    let c = std::char::from_u32(_c as u32).unwrap_or(' '); // Convert i32 to char
    c.is_ascii_alphabetic()
}
