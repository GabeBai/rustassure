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
fn os_read_swap_int32(base: *const u8, offset: usize) -> u32 {
    unsafe {
        let ptr = base.add(offset) as *const u32;
        let val = ptr::read_unaligned(ptr);
        val.to_be() // Assuming you want to swap to big-endian
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    let data: [u8; 4] = [0x01, 0x02, 0x03, 0x04];
    let result = os_read_swap_int32(data.as_ptr(), 0);
    println!("Swapped value: {:#x}", result);
}
