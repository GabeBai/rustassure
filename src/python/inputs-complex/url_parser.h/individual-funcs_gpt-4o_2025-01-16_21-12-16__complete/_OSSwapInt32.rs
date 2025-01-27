#![allow(unaligned_references)]
use std::mem;

// Define a Rust equivalent of the C union `sigval`
enum Sigval {
    SivalInt(i32),
    SivalPtr(*mut std::ffi::c_void),
}

// Define a Rust equivalent of the C union `__sigaction_u`
enum SigactionU {
    SaHandler(fn(i32)),
    SaSigaction(fn(i32, *mut std::ffi::c_void, *mut std::ffi::c_void)),
}

// Function to swap the bytes of a 32-bit unsigned integer
#[no_mangle]
#[no_mangle]
fn osswap_int32(data: u32) -> u32 {
    data.swap_bytes()
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage of `osswap_int32`
    let original: u32 = 0x12345678;
    let swapped = osswap_int32(original);
    println!("Original: {:#X}, Swapped: {:#X}", original, swapped);
}
