use std::os::raw::c_int;

type __darwin_ct_rune_t = c_int;

extern "C" {
    fn __toupper(c: __darwin_ct_rune_t) -> __darwin_ct_rune_t;
}

#[inline]
fn toupper(c: c_int) -> c_int {
    unsafe {
        __toupper(c)
    }
}
