use std::ffi::CString;
use std::os::raw::c_char;

#[repr(C)]
struct OpngUllRatio {
    num: u64,
    denom: u64,
}

extern "C" {
    fn opng_sprint_uratio_impl(buffer: *mut c_char, buffer_size: usize, num: u64, denom: u64, flags: u32) -> i32;
}

fn opng_ullratio_to_factor_string(buffer: &mut [u8], ratio: &OpngUllRatio) -> i32 {
    let num = ratio.num;
    let denom = ratio.denom;

    // Convert the mutable slice to a raw pointer
    let buffer_ptr = buffer.as_mut_ptr() as *mut c_char;
    let buffer_size = buffer.len();

    unsafe {
        opng_sprint_uratio_impl(buffer_ptr, buffer_size, num, denom, 0)
    }
}

fn main() {
    let ratio = OpngUllRatio { num: 10, denom: 2 };
    let mut buffer = vec![0u8; 256]; // Allocate a buffer of 256 bytes

    let result = opng_ullratio_to_factor_string(&mut buffer, &ratio);
    
    // Convert the buffer to a CString to print it safely
    let c_string = unsafe { CString::from_raw(buffer.as_mut_ptr() as *mut c_char) };
    println!("Result: {}, String: {:?}", result, c_string.to_string_lossy());
}
