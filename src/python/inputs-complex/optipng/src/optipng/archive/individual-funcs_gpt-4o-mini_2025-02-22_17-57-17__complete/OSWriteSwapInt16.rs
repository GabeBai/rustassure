use std::mem;
use std::ptr;

#[repr(C)]
struct OSUnalignedU16 {
    __val: u16,
}

#[repr(C)]
struct OSUnalignedU32 {
    __val: u32,
}

#[repr(C)]
struct OSUnalignedU64 {
    __val: u64,
}

// Function to swap the endianness of a 16-bit integer
fn os_swap_int16(data: u16) -> u16 {
    data.swap_bytes()
}

fn os_write_swap_int16(base: *mut std::ffi::c_void, offset: usize, data: u16) {
    let target_ptr = (base as usize + offset) as *mut OSUnalignedU16;
    unsafe {
        (*target_ptr).__val = os_swap_int16(data);
    }
}
