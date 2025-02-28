#![allow(unaligned_references)]
use std::ptr;
use std::mem;

#[repr(C)]
#[repr(C, packed)]struct OSUnalignedU16 {
    __val: u16,
}

#[repr(C)]
#[repr(C, packed)]struct OSUnalignedU32 {
    __val: u32,
}

#[repr(C)]
#[repr(C, packed)]struct OSUnalignedU64 {
    __val: u64,
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
    os_write_swap_int32(buffer.as_mut_ptr(), 0, 0x12345678);
    println!("{:x?}", &buffer[..]);
}
