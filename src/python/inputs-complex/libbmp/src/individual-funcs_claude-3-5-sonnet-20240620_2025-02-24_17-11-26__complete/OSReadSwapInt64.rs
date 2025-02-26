use std::mem::transmute;

#[repr(C, packed)]
struct _OSUnalignedU64 {
    __val: core::sync::atomic::AtomicU64,
}

#[inline]
unsafe fn OSReadSwapInt64(
    _base: *const core::ffi::c_void,
    _offset: usize,
) -> u64 {
    let ptr = (_base as usize + _offset) as *const _OSUnalignedU64;
    let val = (*ptr).__val.load(core::sync::atomic::Ordering::SeqCst);
    u64::from_be(val)
}