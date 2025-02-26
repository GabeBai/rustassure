use std::os::raw::c_int;
use std::os::raw::c_char;
use libc::FILE;

#[inline(always)]
pub unsafe fn __sputc(c: c_int, p: *mut FILE) -> c_int {
    let p = &mut *p;
    if p._w.wrapping_sub(1) >= 0 || (p._w >= p._lbfsize && (c as c_char) != b'\n' as c_char) {
        p._w -= 1;
        *p._p = c as c_char;
        p._p = p._p.offset(1);
        c
    } else {
        __swbuf(c, p)
    }
}

extern "C" {
    fn __swbuf(c: c_int, p: *mut FILE) -> c_int;
}