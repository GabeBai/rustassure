use std::ffi::CString;
use std::os::raw::{c_char, c_ulong};
use std::ptr;

#[repr(C)]
struct OpngUlRatio {
    num: c_ulong,
    denom: c_ulong,
}

type OpngUllongT = u64; // Equivalent to opng_ullong_t

extern "C" {
    fn opng_sprint_uratio_impl(buffer: *mut c_char, buffer_size: usize, num: OpngUllongT, denom: OpngUllongT, flag: i32) -> i32;
}

fn opng_ulratio_to_percent_string(buffer: &mut [c_char], buffer_size: usize, ratio: &OpngUlRatio) -> i32 {
    let num: OpngUllongT = ratio.num as OpngUllongT;
    let denom: OpngUllongT = ratio.denom as OpngUllongT;

    unsafe {
        opng_sprint_uratio_impl(buffer.as_mut_ptr(), buffer_size, num, denom, 1)
    }
}

fn main() {
    // Example usage
    let ratio = OpngUlRatio { num: 50, denom: 100 };
    let mut buffer: [c_char; 64] = [0; 64]; // Buffer for the string
    let buffer_size = buffer.len();

    let result = opng_ulratio_to_percent_string(&mut buffer, buffer_size, &ratio);
    
    // Convert buffer to a Rust string if needed
    let c_str = unsafe { CString::from_raw(buffer.as_mut_ptr()) };
    let percent_string = c_str.to_string_lossy();

    println!("Result: {}, Percent String: {}", result, percent_string);
}
