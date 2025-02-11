#![allow(unaligned_references)]
use std::ptr;
use std::mem;

// Define a packed struct for unaligned 64-bit integer
#[repr(C, packed)]
#[repr(C, packed)]struct OSUnalignedU64 {
    val: u64,
}

// Function to swap bytes of a 64-bit integer
#[no_mangle]
#[no_mangle]
fn swap_int64(data: u64) -> u64 {
    data.swap_bytes()
}

// Function to write a swapped 64-bit integer to a base address with an offset
#[no_mangle]
#[no_mangle]
fn os_write_swap_int64(base: *mut u8, offset: usize, data: u64) {
    unsafe {
        // Calculate the address with the offset
        let addr = base.add(offset);
        // Cast the address to a pointer to the packed struct
        let unaligned_ptr = addr as *mut OSUnalignedU64;
        // Write the swapped data to the unaligned address
        ptr::write_unaligned(&mut (*unaligned_ptr).val, swap_int64(data));
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    let mut buffer = [0u8; 16];
    let base = buffer.as_mut_ptr();
    let offset = 8;
    let data = 0x1234567890ABCDEF;

    os_write_swap_int64(base, offset, data);

    // Verify the result
    let result = unsafe { ptr::read_unaligned(base.add(offset) as *const u64) };
    println!("Result: {:X}", result);
}
