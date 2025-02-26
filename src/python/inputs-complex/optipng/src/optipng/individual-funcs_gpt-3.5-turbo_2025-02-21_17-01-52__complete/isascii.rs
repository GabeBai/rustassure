#[inline]
fn isascii(_c: i32) -> bool {
    (_c & !0x7F) == 0
}
