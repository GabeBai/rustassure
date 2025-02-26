use std::os::raw::{c_int, c_ulong};

type __darwin_ct_rune_t = c_int;

extern "C" {
    fn __maskrune(_: __darwin_ct_rune_t, _: c_ulong) -> u32;
}

fn __wcwidth(_c: __darwin_ct_rune_t) -> i32 {
    let mut _x: u32;
    if _c == 0 {
        return 0;
    }
    unsafe {
        _x = __maskrune(_c, 0xe0000000 | 0x00040000);
    }
    if (_x & 0xe0000000) != 0 {
        return ((_x & 0xe0000000) >> 30) as i32;
    }
    return if (_x & 0x00040000) != 0 { 1 } else { -1 };
}
