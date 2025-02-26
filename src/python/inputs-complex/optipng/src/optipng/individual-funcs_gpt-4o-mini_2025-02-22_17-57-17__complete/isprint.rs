fn is_print(c: i32) -> i32 {
    if (0x20..=0x7E).contains(&c) {
        1
    } else {
        0
    }
}
