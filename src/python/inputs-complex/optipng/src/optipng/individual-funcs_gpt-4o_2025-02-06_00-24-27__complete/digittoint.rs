#![allow(unaligned_references)]
type DarwinCtRuneT = i32;

#[no_mangle]
#[no_mangle]
fn __maskrune(c: DarwinCtRuneT, mask: u64) -> i32 {
    // Assume this function is defined elsewhere
    unimplemented!()
}

#[inline]
#[no_mangle]
#[no_mangle]
fn digittoint(c: i32) -> i32 {
    __maskrune(c, 0x0F)
}
