use std::ffi::CStr;

#[repr(C)]
struct __sbuf {
    _base: *mut u8,
    _size: i32,
}

#[repr(C)]
struct __sFILEX;

extern "C" {
    fn u8next_(txt: *const i8, ch: *mut i32) -> i32;
}

#[inline]
fn u8codepoint(s: *mut i8) -> i32 {
    let mut c: i32 = 0;
    unsafe {
        u8next_(s, &mut c);
    }
    c
}