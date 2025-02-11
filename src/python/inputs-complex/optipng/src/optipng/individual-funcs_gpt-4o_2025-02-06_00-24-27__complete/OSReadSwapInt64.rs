#![allow(unaligned_references)]
use std::ptr;
use std::mem;

#[repr(C)]
#[repr(C, packed)]struct OSUnalignedU16 {
    val: u16,
}

#[repr(C)]
#[repr(C, packed)]struct OSUnalignedU32 {
    val: u32,
}

#[repr(C)]
#[repr(C, packed)]struct OSUnalignedU64 {
    val: u64,
}

#[no_mangle]
#[no_mangle]
fn os_read_swap_int64(base: *const u8, offset: usize) -> u64 {
    unsafe {
        let ptr = base.add(offset) as *const OSUnalignedU64;
        let unaligned_val = ptr::read_unaligned(ptr);
        u64::from_be(unaligned_val.val)
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    let data: [u8; 8] = [0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08];
    let result = os_read_swap_int64(data.as_ptr(), 0);
    println!("Swapped value: {}", result);
}
