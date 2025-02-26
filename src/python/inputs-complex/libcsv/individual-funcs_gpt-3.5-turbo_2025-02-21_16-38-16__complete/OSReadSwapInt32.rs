use std::mem;

#[repr(C)]
#[derive(Debug, Copy, Clone)]
struct _OSUnalignedU32 {
    __val: u32,
}

fn OSReadSwapInt32(_base: *const std::ffi::c_void, _offset: usize) -> u32 {
    let base = _base as usize;
    let unaligned_ptr = (base + _offset) as *const _OSUnalignedU32;
    let unaligned = unsafe { *unaligned_ptr };
    u32::from_be(unaligned.__val)
}
