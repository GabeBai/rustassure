#[inline(always)]
fn __sputc(c: i32, p: &mut FILE) -> i32 {
    if p._w.wrapping_sub(1) >= 0 || (p._w >= p._lbfsize && (c as u8) != b'\n') {
        unsafe {
            *p._p = c as u8;
            p._p = p._p.add(1);
            c
        }
    } else {
        __swbuf(c, p)
    }
}