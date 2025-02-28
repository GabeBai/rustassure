use std::mem::transmute;

#[repr(C, packed)]
struct _OSUnalignedU32 {
    __val: core::sync::atomic::AtomicU32,
}

#[inline]
unsafe fn OSWriteSwapInt32(
    _base: *mut core::ffi::c_void,
    _offset: usize,
    _data: u32
) {
    let ptr = (_base as usize + _offset) as *mut _OSUnalignedU32;
    (*ptr).__val.store(_OSSwapInt32(_data), core::sync::atomic::Ordering::Relaxed);
}

fn _OSSwapInt32(data: u32) -> u32 {
    data.swap_bytes()
}