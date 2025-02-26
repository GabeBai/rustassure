struct __sbuf {
    _base: *mut u8,
    _size: i32,
}

struct __sFILEX;

#[link(name = "c")]
extern {
    fn u8next_(txt: *const i8, ch: *mut i32) -> i32;
}

fn u8codepoint(s: *mut i8) -> i32 {
    let mut c: i32 = 0;
    unsafe { u8next_(s, &mut c); }
    c
}
