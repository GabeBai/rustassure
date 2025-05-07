use std::os::raw::c_char;

extern "C" {
    fn u8next_(txt: *const c_char, ch: *mut i32) -> i32;
}

fn u8codepoint(s: *mut c_char) -> i32 {
    let mut c: i32 = 0;
    unsafe {
        u8next_(s, &mut c);
    }
    c
}
