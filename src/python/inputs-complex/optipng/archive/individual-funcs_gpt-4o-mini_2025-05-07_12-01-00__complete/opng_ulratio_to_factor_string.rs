use std::ffi::CString;
use std::os::raw::c_char;

#[repr(C)]
struct OpngUlratio {
    num: u64,
    denom: u64,
}

extern "C" {
    fn opng_sprint_uratio_impl(buffer: *mut c_char, buffer_size: usize, num: u64, denom: u64, flags: u32) -> i32;
}

fn opng_ulratio_to_factor_string(buffer: *mut c_char, buffer_size: usize, ratio: &OpngUlratio) -> i32 {
    let num = ratio.num;
    let denom = ratio.denom;
    
    // Call the external function
    unsafe {
        opng_sprint_uratio_impl(buffer, buffer_size, num, denom, 0)
    }
}

// Example usage
fn main() {
    let ratio = OpngUlratio { num: 1, denom: 2 };
    let mut buffer: [i8; 256] = [0; 256]; // Allocate a buffer for the string

    let result = opng_ulratio_to_factor_string(buffer.as_mut_ptr(), buffer.len(), &ratio);
    
    // Convert the buffer to a Rust string if needed
    let c_str = unsafe { CString::from_raw(buffer.as_mut_ptr()) };
    let string = c_str.to_string_lossy();
    println!("Result: {}, String: {}", result, string);
}
