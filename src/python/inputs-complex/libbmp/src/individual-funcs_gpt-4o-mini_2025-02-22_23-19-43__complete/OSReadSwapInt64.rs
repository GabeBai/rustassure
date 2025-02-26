use std::mem;

#[repr(C, packed)]
struct OSUnalignedU64 {
    __val: u64,
}

fn os_read_swap_int64(base: *const std::ffi::c_void, offset: usize) -> u64 {
    let ptr = (base as usize + offset) as *const OSUnalignedU64;
    unsafe { os_swap_int64((*ptr).__val) }
}

fn os_swap_int64(value: u64) -> u64 {
    value.swap_bytes()
}
