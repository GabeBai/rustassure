#![allow(unaligned_references)]
use std::ptr;
use std::mem;

// Function to swap bytes of a u16
#[no_mangle]
#[no_mangle]
fn swap_u16(x: u16) -> u16 {
    x.swap_bytes()
}

#[repr(C, packed)]
#[repr(C, packed)]struct OSUnalignedU16 {
    val: u16,
}

#[repr(C, packed)]
#[repr(C, packed)]struct OSUnalignedU32 {
    val: u32,
}

#[repr(C, packed)]
#[repr(C, packed)]struct OSUnalignedU64 {
    val: u64,
}

#[no_mangle]
#[no_mangle]
fn os_write_swap_int16(base: *mut u8, offset: usize, data: u16) {
    unsafe {
        let ptr = base.add(offset) as *mut OSUnalignedU16;
        let swapped_data = swap_u16(data);
        ptr::write_unaligned(&mut (*ptr).val, swapped_data);
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    let mut buffer = [0u8; 4];
    os_write_swap_int16(buffer.as_mut_ptr(), 0, 0x1234);
    println!("{:x?}", &buffer);
}
