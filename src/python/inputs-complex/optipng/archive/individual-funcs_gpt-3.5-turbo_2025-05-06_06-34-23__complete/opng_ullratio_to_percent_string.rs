use std::os::raw::{c_char, c_ulonglong};

#[repr(C)]
pub struct OpngUllRatio {
    num: c_ulonglong,
    denom: c_ulonglong,
}

#[link(name = "opng")]
extern "C" {
    fn opng_sprint_uratio_impl(buffer: *mut c_char, buffer_size: usize, num: c_ulonglong, denom: c_ulonglong, value: i32) -> i32;
}

pub fn opng_ullratio_to_percent_string(buffer: *mut c_char, buffer_size: usize, ratio: *const OpngUllRatio) -> i32 {
    unsafe {
        let num = (*ratio).num;
        let denom = (*ratio).denom;
        opng_sprint_uratio_impl(buffer, buffer_size, num, denom, 1)
    }
}
