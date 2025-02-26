#[inline]
fn isupper(c: i32) -> i32 {
    if c >= 'A' as i32 && c <= 'Z' as i32 {
        1
    } else {
        0
    }
}
