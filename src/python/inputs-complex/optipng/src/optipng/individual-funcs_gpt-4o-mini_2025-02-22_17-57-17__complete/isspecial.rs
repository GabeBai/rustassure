#[inline]
fn isspecial(_c: i32) -> i32 {
    return if _c & 0x00100000 != 0 { 1 } else { 0 };
}
