#![allow(unaligned_references)]
use std::ptr;
use std::mem;

// Define the unaligned types using byte arrays to avoid alignment issues
#[repr(C)]
#[repr(C, packed)]struct OSUnalignedU16 {
    __val: [u8; 2],
}

#[repr(C)]
#[repr(C, packed)]struct OSUnalignedU32 {
    __val: [u8; 4],
}

#[repr(C)]
#[repr(C, packed)]struct OSUnalignedU64 {
    __val: [u8; 8],
}

// Function to read and swap a 64-bit integer from an unaligned address
#[no_mangle]
#[no_mangle]
fn os_read_swap_int64(base: *const u8, offset: usize) -> u64 {
    unsafe {
        // Calculate the address with the offset
        let addr = base.add(offset);
        // Read the unaligned value
        let unaligned = ptr::read_unaligned(addr as *const OSUnalignedU64);
        // Convert the byte array to a u64
        let value = u64::from_le_bytes(unaligned.__val);
        // Swap the byte order
        value.swap_bytes()
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    let data: [u8; 8] = [0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08];
    let result = os_read_swap_int64(data.as_ptr(), 0);
    println!("Swapped value: {:#x}", result);
}
