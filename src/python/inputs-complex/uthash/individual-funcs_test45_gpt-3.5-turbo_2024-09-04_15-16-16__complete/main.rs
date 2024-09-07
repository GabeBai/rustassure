use std::mem;

struct UT_icd {
    sz: usize,
    init: Option<fn(*mut std::ffi::c_void)>,
    copy: Option<fn(*mut std::ffi::c_void, *const std::ffi::c_void)>,
    dtor: Option<fn(*mut std::ffi::c_void)>,
}

struct UT_array {
    i: u32,
    n: u32,
    icd: UT_icd,
    d: *mut std::ffi::c_void,
}

fn main() {
    let mut a: *mut UT_array;
    let mut i: u32;
    let mut p: *mut i32 = std::ptr::null_mut();

    // Rest of the code translation goes here
}
