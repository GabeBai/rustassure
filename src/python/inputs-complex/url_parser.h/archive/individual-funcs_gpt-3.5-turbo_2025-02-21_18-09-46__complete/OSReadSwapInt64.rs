use std::ptr;

#[repr(C)]
#[derive(Debug)]
struct _OSUnalignedU64 {
    __val: u64,
}

fn os_read_swap_int64(base: *const std::ffi::c_void, offset: usize) -> u64 {
    let base_addr = base as usize + offset;
    let unaligned = unsafe { &*(base_addr as *const _OSUnalignedU64) };
    u64::from_be(unaligned.__val)
}

fn main() {
    let base: *const std::ffi::c_void = ptr::null();
    let offset: usize = 0;
    let result = os_read_swap_int64(base, offset);
    println!("Result: {}", result);
}
