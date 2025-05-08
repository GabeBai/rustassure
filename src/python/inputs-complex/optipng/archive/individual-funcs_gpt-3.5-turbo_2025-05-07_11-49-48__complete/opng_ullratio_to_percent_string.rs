use std::os::raw::{c_char, c_ulonglong};

struct opng_ullratio {
    num: c_ulonglong,
    denom: c_ulonglong,
}

extern {
    fn opng_sprint_uratio_impl(buffer: *mut c_char, buffer_size: usize, num: c_ulonglong, denom: c_ulonglong, _: i32) -> i32;
}

fn opng_ullratio_to_percent_string(buffer: *mut c_char, buffer_size: usize, ratio: *const opng_ullratio) -> i32 {
    let ratio = unsafe { &*ratio };
    let num = ratio.num;
    let denom = ratio.denom;
    unsafe { opng_sprint_uratio_impl(buffer, buffer_size, num, denom, 1) }
}
