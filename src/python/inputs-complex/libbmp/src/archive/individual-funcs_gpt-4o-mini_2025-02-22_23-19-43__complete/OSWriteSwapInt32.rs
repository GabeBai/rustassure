use std::mem;
use std::ptr;

#[repr(C)]
#[derive(Debug)]
struct OSUnalignedU16 {
    __val: u16,
}

#[repr(C)]
#[derive(Debug)]
struct OSUnalignedU32 {
    __val: u32,
}

#[repr(C)]
#[derive(Debug)]
struct OSUnalignedU64 {
    __val: u64,
}

// Function to swap the byte order of a 32-bit integer
fn os_swap_int32(data: u32) -> u32 {
    data.to_be() // or use data.swap_bytes() depending on the desired endianness
}

fn os_write_swap_int32(base: *mut std::ffi::c_void, offset: usize, data: u32) {
    unsafe {
        let base_ptr = base as *mut OSUnalignedU32;
        let target_ptr = base_ptr.add(offset / mem::size_of::<OSUnalignedU32>());
        (*target_ptr).__val = os_swap_int32(data);
    }
}
