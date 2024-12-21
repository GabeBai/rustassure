fn ssl_mfl_code_to_length(mfl: i32) -> u32 {
    match mfl {
        0 => std::cmp::min(16384, 16384),
        1 => 512,
        2 => 1024,
        3 => 2048,
        4 => 4096,
        _ => std::cmp::min(16384, 16384),
    }
}
