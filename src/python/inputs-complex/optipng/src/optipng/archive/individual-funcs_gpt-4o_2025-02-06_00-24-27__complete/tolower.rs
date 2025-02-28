#![allow(unaligned_references)]
type DarwinCtRuneT = i32;

#[no_mangle]
#[no_mangle]
fn __tolower(c: DarwinCtRuneT) -> DarwinCtRuneT {
    // Assume this function is defined elsewhere
    c
}

#[inline]
#[no_mangle]
#[no_mangle]
fn tolower(c: i32) -> i32 {
    __tolower(c)
}
