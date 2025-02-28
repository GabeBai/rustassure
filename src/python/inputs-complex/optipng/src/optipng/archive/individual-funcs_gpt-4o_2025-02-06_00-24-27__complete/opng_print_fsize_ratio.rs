#![allow(unaligned_references)]
use std::fmt::Write; // For using write! macro

// Define a struct to represent the ratio
#[repr(C, packed)]struct OpngUlratio {
    num: u64,
    denom: u64,
}

// Function to convert the ratio to a string
#[no_mangle]
#[no_mangle]
fn opng_ulratio_to_factor_string(buffer: &mut String, ratio: &OpngUlratio) -> i32 {
    // Example implementation, you might need to adjust this
    if ratio.denom == 0 {
        return -1; // Error case
    }
    let factor = ratio.num as f64 / ratio.denom as f64;
    write!(buffer, "{:.2}", factor).unwrap();
    1 // Success
}

// Function to print the file size ratio
#[no_mangle]
#[no_mangle]
fn opng_print_fsize_ratio(num: u64, denom: u64) {
    let mut buffer = String::new();
    let ratio = OpngUlratio { num, denom };
    let result = opng_ulratio_to_factor_string(&mut buffer, &ratio);
    println!("{}{}", buffer, if result > 0 { "" } else { "..." });
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    opng_print_fsize_ratio(100, 200);
}
