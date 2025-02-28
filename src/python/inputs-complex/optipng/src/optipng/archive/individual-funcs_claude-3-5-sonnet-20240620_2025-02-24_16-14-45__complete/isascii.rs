#[inline]
pub fn isascii(c: i32) -> bool {
    (c & !0x7F) == 0
}