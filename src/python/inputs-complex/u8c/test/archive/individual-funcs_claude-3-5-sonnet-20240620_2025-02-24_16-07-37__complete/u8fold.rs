use std::os::raw::c_int;

#[repr(C)]
pub struct __sbuf {
    _base: *mut u8,
    _size: c_int,
}

extern "C" {
    pub fn fold_search(cp: c_int) -> c_int;
}

#[no_mangle]
pub extern "C" fn u8fold(mut cp: c_int) -> c_int {
    if (0x10400..=0x10427).contains(&cp) {
        cp += 40;
    }
    if cp <= 0xFFFF {
        cp = unsafe { fold_search(cp) };
    }
    cp
}