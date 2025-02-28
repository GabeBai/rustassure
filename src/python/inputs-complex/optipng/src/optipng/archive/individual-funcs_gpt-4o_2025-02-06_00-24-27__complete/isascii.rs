#![allow(unaligned_references)]
#[inline]
#[no_mangle]
#[no_mangle]
fn isascii(c: i32) -> bool {
    (c & !0x7F) == 0
}
