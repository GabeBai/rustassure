use std::ptr;

#[repr(C)]
struct _OSUnalignedU64 {
    __val: u64,
}

#[inline]
fn OSReadSwapInt64(base: *const std::ffi::c_void, offset: usize) -> u64 {
    let base_ptr = base as usize + offset;
    let unaligned_ptr = base_ptr as *const _OSUnalignedU64;
    let unaligned = unsafe { &*unaligned_ptr };
    u64::from_be(unaligned.__val)
}
