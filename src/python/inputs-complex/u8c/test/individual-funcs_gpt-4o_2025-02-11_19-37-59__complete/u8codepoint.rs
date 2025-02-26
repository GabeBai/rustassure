#![allow(unaligned_references)]
#[repr(C, packed)]struct __sbuf {
    _base: *mut u8,
    _size: i32,
}
#[repr(C, packed)]struct __sFILEX;

#[no_mangle]
#[no_mangle]
fn u8next_(txt: *const u8, ch: &mut i32) -> i32 {
    // Function body not provided
    0
}

#[inline(always)]
#[no_mangle]
#[no_mangle]
fn u8codepoint(s: *mut u8) -> i32 {
    let mut c = 0;
    u8next_(s, &mut c);
    c
}
