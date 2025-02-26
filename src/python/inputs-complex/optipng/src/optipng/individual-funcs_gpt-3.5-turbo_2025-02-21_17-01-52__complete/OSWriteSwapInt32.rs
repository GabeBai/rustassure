use std::mem;

#[repr(C)]
struct _OSUnalignedU32 {
    __val: u32,
}

fn OSWriteSwapInt32(_base: *mut std::ffi::c_void, _offset: usize, _data: u32) {
    let base = _base as usize;
    let unaligned_ptr = (base + _offset) as *mut _OSUnalignedU32;
    unsafe {
        (*unaligned_ptr).__val = _OSSwapInt32(_data);
    }
}

fn _OSSwapInt32(data: u32) -> u32 {
    data.swap_bytes()
}
