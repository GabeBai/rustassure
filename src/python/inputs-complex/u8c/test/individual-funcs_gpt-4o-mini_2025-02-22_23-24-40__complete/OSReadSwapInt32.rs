use std::mem;
use std::ptr;

#[repr(C)]
struct OSUnalignedU32 {
    __val: u32,
}

fn os_swap_int32(value: u32) -> u32 {
    value.to_le() // Assuming we want to convert to little-endian
}

fn os_read_swap_int32(base: *const u8, offset: usize) -> u32 {
    unsafe {
        let ptr = (base as usize + offset) as *const OSUnalignedU32;
        let value = (*ptr).__val;
        os_swap_int32(value)
    }
}
