use std::ffi::CString;

#[repr(C)]
struct OpngUlratio {
    num: u64,
    denom: u64,
}

extern "C" {
    fn opng_ulratio_to_factor_string(buffer: *mut i8, buffer_size: usize, ratio: *const OpngUlratio) -> i32;
}

fn opng_print_fsize_ratio(num: u64, denom: u64) {
    let mut buffer = [0i8; 32]; // Create a buffer of 32 bytes
    let ratio = OpngUlratio { num, denom };

    // Call the external function with a mutable reference to the buffer
    let result = unsafe {
        opng_ulratio_to_factor_string(buffer.as_mut_ptr(), buffer.len(), &ratio)
    };

    // Convert the buffer to a Rust string for printing
    let c_str = unsafe { CString::from_raw(buffer.as_mut_ptr()) };
    let str_buffer = c_str.to_string_lossy();

    // Print the result
    if result > 0 {
        println!("{}", str_buffer);
    } else {
        println!("{}...", str_buffer);
    }
}
