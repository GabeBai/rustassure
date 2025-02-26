use std::os::raw::{c_char, c_ulong};

#[repr(C)]
pub struct opng_ullratio {
    num: u64,
    denom: u64,
}

extern "C" {
    fn opng_sprint_uratio_impl(buffer: *mut c_char, buffer_size: c_ulong, num: u64, denom: u64, flag: i32) -> i32;
}

pub unsafe extern "C" fn opng_ullratio_to_percent_string(buffer: *mut c_char, buffer_size: c_ulong, ratio: *const opng_ullratio) -> i32 {
    let ratio = &*ratio;
    let num = ratio.num;
    let denom = ratio.denom;
    opng_sprint_uratio_impl(buffer, buffer_size, num, denom, 1)
}
