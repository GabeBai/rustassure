use std::mem::transmute;

#[repr(C, packed)]
struct _OSUnalignedU32 {
    __val: core::sync::atomic::AtomicU32,
}

#[inline]
unsafe fn OSReadSwapInt32(
    _base: *const core::ffi::c_void,
    _offset: usize,
) -> u32 {
    let ptr = (_base as usize + _offset) as *const _OSUnalignedU32;
    let val = (*ptr).__val.load(core::sync::atomic::Ordering::SeqCst);
    u32::from_be(val)
}