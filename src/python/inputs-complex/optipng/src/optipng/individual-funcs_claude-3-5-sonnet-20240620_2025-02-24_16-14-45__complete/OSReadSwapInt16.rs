use std::mem::transmute;

#[repr(C, packed)]
struct _OSUnalignedU16 {
    __val: core::cell::UnsafeCell<u16>,
}

#[inline]
pub unsafe fn OSReadSwapInt16(
    _base: *const core::ffi::c_void,
    _offset: usize,
) -> u16 {
    let ptr = (_base as usize + _offset) as *const _OSUnalignedU16;
    let val = (*ptr).__val.get();
    u16::from_be(*val)
}