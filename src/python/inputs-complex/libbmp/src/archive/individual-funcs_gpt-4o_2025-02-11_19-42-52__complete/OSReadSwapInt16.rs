#![allow(unaligned_references)]
use std::ptr;
use std::mem;

#[repr(C, packed)]
#[repr(C, packed)]struct OSUnalignedU16 {
    __val: u16,
}

#[repr(C, packed)]
#[repr(C, packed)]struct OSUnalignedU32 {
    __val: u32,
}

#[repr(C, packed)]
#[repr(C, packed)]struct OSUnalignedU64 {
    __val: u64,
}

#[no_mangle]
#[no_mangle]
fn os_read_swap_int16(base: *const u8, offset: usize) -> u16 {
    unsafe {
        let ptr = base.add(offset) as *const OSUnalignedU16;
        let unaligned_val = ptr::read_unaligned(ptr);
        u16::from_be(unaligned_val.__val)
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    let data: [u8; 4] = [0x01, 0x02, 0x03, 0x04];
    let result = os_read_swap_int16(data.as_ptr(), 0);
    println!("Result: {}", result);
}
