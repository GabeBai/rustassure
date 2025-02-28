#![allow(unaligned_references)]
use std::ptr;
use std::mem;

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
fn os_read_swap_int32(base: *const u8, offset: usize) -> u32 {
    unsafe {
        let ptr = base.add(offset) as *const OSUnalignedU32;
        let unaligned_val = ptr::read_unaligned(ptr);
        u32::from_be(unaligned_val.val)
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    let data: [u8; 4] = [0x12, 0x34, 0x56, 0x78];
    let result = os_read_swap_int32(data.as_ptr(), 0);
    println!("Swapped int32: {:#X}", result);
}
