use std::ffi::CString;
use std::os::raw::c_char;

#[repr(C)]
struct OpngUllratio {
    num: u64,
    denom: u64,
}

extern "C" {
    fn opng_sprint_uratio_impl(buffer: *mut c_char, buffer_size: usize, num: u64, denom: u64, flags: u32) -> i32;
}

fn opng_ullratio_to_factor_string(buffer: &mut [u8], ratio: &OpngUllratio) -> i32 {
    // Ensure the buffer is large enough for the string
    let buffer_size = buffer.len();
    
    // Create a mutable pointer to the buffer
    let buffer_ptr = buffer.as_mut_ptr() as *mut c_char;

    // Call the external function
    unsafe {
        opng_sprint_uratio_impl(buffer_ptr, buffer_size, ratio.num, ratio.denom, 0)
    }
}

fn main() {
    let ratio = OpngUllratio { num: 1, denom: 2 };
    let mut buffer = vec![0u8; 256]; // Allocate a buffer of 256 bytes

    // Call the function with mutable borrow
    let result = opng_ullratio_to_factor_string(&mut buffer, &ratio);

    // Convert the buffer to a string for demonstration purposes
    let result_string = unsafe { CString::from_raw(buffer.as_mut_ptr() as *mut c_char) };
    println!("Result: {:?}", result_string.to_string_lossy());
}
