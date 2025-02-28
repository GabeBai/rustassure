#[link(name = "c")]
extern {
    fn __istype(c: i32, mask: i64) -> i32;
}

#[inline]
fn isalpha(c: i32) -> i32 {
    unsafe { __istype(c, 0x00000100) }
}
