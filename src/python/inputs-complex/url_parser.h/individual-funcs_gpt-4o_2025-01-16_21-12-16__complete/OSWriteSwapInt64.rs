#![allow(unaligned_references)]
use std::ptr;
use std::mem;

// Function to swap bytes of a u64
#[no_mangle]
#[no_mangle]
fn swap_u64(x: u64) -> u64 {
    x.swap_bytes()
}

#[repr(C)]
#[repr(C, packed)]struct OSUnalignedU64 {
    __val: u64,
}

impl OSUnalignedU64 {
    // Read the unaligned u64 value
    unsafe fn read_unaligned(ptr: *const u8) -> u64 {
        let mut data: u64 = 0;
        ptr::copy_nonoverlapping(ptr, &mut data as *mut u64 as *mut u8, mem::size_of::<u64>());
        data
    }

    // Write the unaligned u64 value
    unsafe fn write_unaligned(ptr: *mut u8, value: u64) {
        ptr::copy_nonoverlapping(&value as *const u64 as *const u8, ptr, mem::size_of::<u64>());
    }
}

#[no_mangle]
#[no_mangle]
fn os_write_swap_int64(base: *mut u8, offset: usize, data: u64) {
    unsafe {
        let ptr = base.add(offset);
        let swapped_data = swap_u64(data);
        OSUnalignedU64::write_unaligned(ptr, swapped_data);
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    let mut buffer = [0u8; 16];
    let data: u64 = 0x1234567890ABCDEF;
    os_write_swap_int64(buffer.as_mut_ptr(), 0, data);

    // Verify the result
    let result = unsafe { OSUnalignedU64::read_unaligned(buffer.as_ptr()) };
    println!("Result: {:X}", result);
}
