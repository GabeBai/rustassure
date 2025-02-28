use std::mem::transmute;

#[repr(C, packed)]
struct OSUnalignedU64 {
    __val: core::sync::atomic::AtomicU64,
}

#[inline]
unsafe fn OSWriteSwapInt64(
    _base: *mut core::ffi::c_void,
    _offset: usize,
    _data: u64
) {
    let ptr = (_base as usize + _offset) as *mut OSUnalignedU64;
    (*ptr).__val.store(_data.swap_bytes(), core::sync::atomic::Ordering::Relaxed);
}