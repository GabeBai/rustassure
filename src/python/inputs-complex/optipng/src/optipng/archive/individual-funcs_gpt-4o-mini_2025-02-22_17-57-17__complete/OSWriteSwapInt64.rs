use std::mem;
use std::ptr;

#[repr(C)]
#[derive(Debug)]
struct OSUnalignedU64 {
    __val: u64,
}

fn os_swap_int64(data: u64) -> u64 {
    // Implement the byte swap logic here, similar to _OSSwapInt64 in C
    data.swap_bytes()
}

fn os_write_swap_int64(base: *mut std::ffi::c_void, offset: usize, data: u64) {
    unsafe {
        let target_ptr = (base as *mut u8).add(offset) as *mut OSUnalignedU64;
        (*target_ptr).__val = os_swap_int64(data);
    }
}
