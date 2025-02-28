use std::ffi::CString;
use std::os::raw::c_char;

#[repr(C)]
struct OpngUlRatio {
    num: u64, // Assuming opng_ulongest_impl_t is equivalent to u64
    denom: u64,
}

extern "C" {
    fn opng_sprint_uratio_impl(buffer: *mut c_char, buffer_size: usize, num: u64, denom: u64, flag: i32) -> i32;
}

fn opng_ulratio_to_percent_string(buffer: &mut [i8], buffer_size: usize, ratio: &OpngUlRatio) -> i32 {
    let num = ratio.num;
    let denom = ratio.denom;
    
    // Call the external function
    unsafe {
        opng_sprint_uratio_impl(buffer.as_mut_ptr(), buffer_size, num, denom, 1)
    }
}

// Example usage
fn main() {
    let ratio = OpngUlRatio { num: 1, denom: 2 };
    let mut buffer: [i8; 64] = [0; 64]; // Allocate a buffer of i8
    let buffer_size = buffer.len();

    let result = opng_ulratio_to_percent_string(&mut buffer, buffer_size, &ratio);
    
    // Convert the buffer to a Rust string for demonstration
    let c_str = unsafe { CString::from_raw(buffer.as_mut_ptr()) };
    println!("Result: {:?}", c_str.to_string_lossy());
}
