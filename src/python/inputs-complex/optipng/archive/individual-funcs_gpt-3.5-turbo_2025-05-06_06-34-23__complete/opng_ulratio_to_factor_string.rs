use std::os::raw::{c_char, c_ulong};
use std::time::Timespec;

#[repr(C)]
pub struct OpngUlRatio {
    num: c_ulong,
    denom: c_ulong,
}

#[link(name = "opng")]
extern "C" {
    fn opng_sprint_uratio_impl(buffer: *mut c_char, buffer_size: usize, num: c_ulong, denom: c_ulong, _: i32) -> i32;
}

fn opng_ulratio_to_factor_string(buffer: *mut c_char, buffer_size: usize, ratio: &OpngUlRatio) -> i32 {
    let num = ratio.num;
    let denom = ratio.denom;
    unsafe {
        opng_sprint_uratio_impl(buffer, buffer_size, num, denom, 0)
    }
}

fn main() {
    let ratio = OpngUlRatio { num: 10, denom: 5 };
    let mut buffer: [c_char; 100] = [0; 100];
    let buffer_size = buffer.len();
    let result = opng_ulratio_to_factor_string(buffer.as_mut_ptr(), buffer_size, &ratio);
    println!("Result: {}", result);
}
