use std::ptr;

#[repr(C)]
#[derive(Debug)]
struct OSUnalignedU32 {
    __val: u32,
}

fn os_swap_int32(data: u32) -> u32 {
    // Assuming _OSSwapInt32 is a function that swaps the byte order of an integer.
    data.swap_bytes() // This is a simple example; replace with actual swap logic if needed.
}

fn os_write_swap_int32(base: *mut std::ffi::c_void, offset: usize, data: u32) {
    unsafe {
        let target_ptr = (base as *mut OSUnalignedU32).add(offset / std::mem::size_of::<OSUnalignedU32>());
        (*target_ptr).__val = os_swap_int32(data);
    }
}
