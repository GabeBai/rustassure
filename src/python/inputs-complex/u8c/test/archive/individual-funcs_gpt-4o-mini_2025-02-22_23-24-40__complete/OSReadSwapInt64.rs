use std::mem;
use std::ptr;

#[repr(C, packed)]
struct OSUnalignedU16 {
    __val: u16,
}

#[repr(C, packed)]
struct OSUnalignedU32 {
    __val: u32,
}

#[repr(C, packed)]
struct OSUnalignedU64 {
    __val: u64,
}

fn os_swap_int64(value: u64) -> u64 {
    value.swap_bytes()
}

fn os_read_swap_int64(base: *const u8, offset: usize) -> u64 {
    // Calculate the pointer to the unaligned structure
    let ptr = unsafe { (base as usize + offset) as *const OSUnalignedU64 };
    
    // Read the value from the pointer
    let value: u64 = unsafe { (*ptr).__val };
    
    // Swap the bytes and return
    os_swap_int64(value)
}

fn main() {
    // Example usage
    let data = OSUnalignedU64 { __val: 0x0102030405060708 };
    let base: *const u8 = &data as *const _ as *const u8;
    let offset: usize = 0;

    let swapped_value = os_read_swap_int64(base, offset);
    println!("Swapped Value: {:#x}", swapped_value);
}
