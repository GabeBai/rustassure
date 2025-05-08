use std::os::raw::c_int;

extern "C" {
    fn fold_search(cp: c_int) -> c_int;
}

pub fn u8fold(mut cp: c_int) -> c_int {
    if 0x10400 <= cp && cp <= 0x10427 {
        cp += 40;
    }
    if cp <= 0xFFFF {
        cp = unsafe { fold_search(cp) };
    }
    cp
}
