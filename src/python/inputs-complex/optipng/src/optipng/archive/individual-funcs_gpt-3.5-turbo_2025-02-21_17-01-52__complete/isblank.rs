fn isblank(_c: u32) -> bool {
    let c = char::from_u32(_c).unwrap_or_default();
    c == ' ' || c == '\t'
}
