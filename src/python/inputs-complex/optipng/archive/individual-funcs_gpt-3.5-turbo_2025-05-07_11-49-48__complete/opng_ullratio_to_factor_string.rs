use std::os::raw::{c_char, c_ulonglong};

type opng_ullong_t = c_ulonglong;
type opng_ulongest_impl_t = c_ulonglong;

#[repr(C)]
struct opng_ullratio {
    num: opng_ullong_t,
    denom: opng_ullong_t,
}

#[link(name = "c")]
extern "C" {
    fn opng_sprint_uratio_impl(buffer: *mut c_char, buffer_size: usize, num: opng_ulongest_impl_t, denom: opng_ulongest_impl_t, _: i32) -> i32;
}

fn opng_ullratio_to_factor_string(buffer: *mut c_char, buffer_size: usize, ratio: *const opng_ullratio) -> i32 {
    let ratio = unsafe { &*ratio };
    let num = ratio.num;
    let denom = ratio.denom;
    unsafe {
        opng_sprint_uratio_impl(buffer, buffer_size, num, denom, 0)
    }
}
