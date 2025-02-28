#![allow(unaligned_references)]
#[inline]
#[no_mangle]
#[no_mangle]
fn toascii(c: i32) -> i32 {
    c & 0x7F
}
