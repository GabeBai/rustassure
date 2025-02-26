use std::mem;

#[repr(C)]
struct _OSUnalignedU16 {
    __val: u16,
}

fn OSWriteSwapInt16(_base: *mut std::ffi::c_void, _offset: usize, _data: u16) {
    let base = _base as usize;
    let unaligned_ptr = (base + _offset) as *mut _OSUnalignedU16;
    unsafe {
        (*unaligned_ptr).__val = _data.to_be();
    }
}

fn main() {
    // Example usage
    let mut data: u16 = 0x1234;
    let mut base_ptr: *mut std::ffi::c_void = std::ptr::null_mut();
    let offset: usize = 0;
    
    OSWriteSwapInt16(base_ptr, offset, data);
}
