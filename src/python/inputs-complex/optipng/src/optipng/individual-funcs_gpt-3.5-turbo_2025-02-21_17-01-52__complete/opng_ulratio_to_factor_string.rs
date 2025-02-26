use std::os::raw::{c_char, c_ulong};

#[repr(C)]
pub struct opng_ulratio {
    pub num: u32,
    pub denom: u32,
}

extern "C" {
    fn opng_sprint_uratio_impl(buffer: *mut c_char, buffer_size: c_ulong, num: u64, denom: u64, _: i32) -> i32;
}

pub extern "C" fn opng_ulratio_to_factor_string(buffer: *mut c_char, buffer_size: c_ulong, ratio: *const opng_ulratio) -> i32 {
    unsafe {
        let ratio = &*ratio;
        let num = ratio.num as u64;
        let denom = ratio.denom as u64;
        opng_sprint_uratio_impl(buffer, buffer_size, num, denom, 0)
    }
}
