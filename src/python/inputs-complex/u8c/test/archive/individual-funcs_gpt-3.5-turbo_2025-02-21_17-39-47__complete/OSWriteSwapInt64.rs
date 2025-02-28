use std::mem;

#[repr(C)]
struct _OSUnalignedU64 {
    __val: u64,
}

fn OSWriteSwapInt64(_base: *mut std::ffi::c_void, _offset: usize, _data: u64) {
    let base = _base as usize;
    let unaligned_ptr = (base + _offset) as *mut _OSUnalignedU64;
    unsafe {
        (*unaligned_ptr).__val = _OSSwapInt64(_data);
    }
}

fn _OSSwapInt64(data: u64) -> u64 {
    data.to_be()
}
