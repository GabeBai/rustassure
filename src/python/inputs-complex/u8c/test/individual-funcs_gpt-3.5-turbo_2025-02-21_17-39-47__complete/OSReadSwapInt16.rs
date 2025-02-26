use std::mem;

#[repr(C)]
struct _OSUnalignedU16 {
    __val: u16,
}

fn OSReadSwapInt16(_base: *const std::ffi::c_void, _offset: usize) -> u16 {
    let base = _base as usize;
    let unaligned_ptr = (base + _offset) as *const _OSUnalignedU16;
    let unaligned = unsafe { &*unaligned_ptr };
    u16::from_be(unaligned.__val)
}
