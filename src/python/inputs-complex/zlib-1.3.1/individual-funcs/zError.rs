rust
fn zerror(err: i32) -> &str {
    match err {
        // Add error messages here
        1 => "Zlib error",
        2 => "Data format error",
        _ => "Unknown error",
    }
}