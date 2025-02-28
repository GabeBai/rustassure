#![allow(unaligned_references)]
use std::ptr;
use std::mem;

#[repr(C, packed)]
#[repr(C, packed)]struct OSUnalignedU32 {
    __val: u32,
}

#[no_mangle]
#[no_mangle]
fn os_write_swap_int32(base: *mut u8, offset: usize, data: u32) {
    unsafe {
        let ptr = base.add(offset) as *mut u32;
        let swapped_data = data.swap_bytes();
        ptr::write_unaligned(ptr, swapped_data);
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    let mut buffer = [0u8; 8];
    let base = buffer.as_mut_ptr();
    os_write_swap_int32(base, 0, 0x12345678);

    // Verify the result
    let result = unsafe { ptr::read_unaligned(base as *const u32) };
    println!("Result: 0x{:08x}", result);
}
