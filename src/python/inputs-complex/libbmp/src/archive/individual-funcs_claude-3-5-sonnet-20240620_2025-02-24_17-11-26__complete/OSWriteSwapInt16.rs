use std::mem::transmute;

#[repr(C, packed)]
struct OSUnalignedU16 {
    __val: core::cell::UnsafeCell<u16>,
}

#[inline]
pub unsafe fn OSWriteSwapInt16(
    _base: *mut core::ffi::c_void,
    _offset: usize,
    _data: u16
) {
    let ptr = (_base as usize + _offset) as *mut OSUnalignedU16;
    (*ptr).__val.get().write(_OSSwapInt16(_data));
}

fn _OSSwapInt16(data: u16) -> u16 {
    data.to_be()
}