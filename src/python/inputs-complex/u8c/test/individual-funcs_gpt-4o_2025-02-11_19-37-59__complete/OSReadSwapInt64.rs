#![allow(unaligned_references)]
use std::ptr;
use std::mem;

// Define the unaligned types using byte arrays
#[repr(C, packed)]
#[repr(C, packed)]struct OSUnalignedU16 {
    __val: [u8; 2],
}

#[repr(C, packed)]
#[repr(C, packed)]struct OSUnalignedU32 {
    __val: [u8; 4],
}

#[repr(C, packed)]
#[repr(C, packed)]struct OSUnalignedU64 {
    __val: [u8; 8],
}

// Function to read a 64-bit integer from a potentially unaligned address
#[no_mangle]
#[no_mangle]
fn os_read_swap_int64(base: *const u8, offset: usize) -> u64 {
    unsafe {
        let ptr = base.add(offset) as *const OSUnalignedU64;
        let unaligned_val = ptr::read_unaligned(ptr);
        u64::from_le_bytes(unaligned_val.__val)
    }
}

// Example usage
#[no_mangle]
#[no_mangle]
fn main() {
    let data: [u8; 16] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
    let value = os_read_swap_int64(data.as_ptr(), 8);
    println!("Read value: {}", value);
}
