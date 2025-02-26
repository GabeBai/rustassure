use std::os::raw::c_int;

type __darwin_ct_rune_t = c_int;

extern "C" {
    fn __maskrune(_: __darwin_ct_rune_t, _: u64) -> c_int;
}

fn digittoint(_c: c_int) -> c_int {
    unsafe {
        __maskrune(_c as __darwin_ct_rune_t, 0x0F)
    }
}
