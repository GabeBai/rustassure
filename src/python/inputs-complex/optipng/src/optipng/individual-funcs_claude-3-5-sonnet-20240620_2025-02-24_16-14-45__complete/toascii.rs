#[inline]
fn to_ascii(c: i32) -> i32 {
    c & 0x7F
}