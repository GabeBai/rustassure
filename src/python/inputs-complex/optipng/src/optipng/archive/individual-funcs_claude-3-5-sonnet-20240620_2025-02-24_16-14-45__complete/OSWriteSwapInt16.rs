use std::mem::transmute;

#[repr(C, packed)]
struct OSUnalignedU16 {
    __val: core::cell::Cell<u16>,
}

#[inline]
pub fn OSWriteSwapInt16(
    _base: *mut core::ffi::c_void,
    _offset: usize,
    _data: u16
) {
    unsafe {
        let ptr = (_base as usize + _offset) as *mut OSUnalignedU16;
        (*ptr).__val.set(_data.to_be());
    }
}