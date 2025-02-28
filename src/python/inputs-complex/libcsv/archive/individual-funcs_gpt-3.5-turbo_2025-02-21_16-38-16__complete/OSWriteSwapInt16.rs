use std::mem;

#[repr(C)]
#[derive(Debug, Copy, Clone)]
pub struct _OSUnalignedU16 {
    __val: u16,
}

#[repr(C)]
#[derive(Debug, Copy, Clone)]
pub struct _OSUnalignedU32 {
    __val: u32,
}

#[repr(C)]
#[derive(Debug, Copy, Clone)]
pub struct _OSUnalignedU64 {
    __val: u64,
}

pub fn OSWriteSwapInt16(base: *mut std::ffi::c_void, offset: usize, data: u16) {
    let base_ptr = base as usize + offset;
    let unaligned_ptr = base_ptr as *mut _OSUnalignedU16;
    unsafe {
        (*unaligned_ptr).__val = data.to_be();
    }
}

fn main() {
    // Example usage
    let mut data: u16 = 0x1234;
    let mut base: *mut std::ffi::c_void = std::ptr::null_mut();
    let offset: usize = 0;

    OSWriteSwapInt16(base, offset, data);

    // Verify the result
    let unaligned_ptr = base as *const _OSUnalignedU16;
    let result = unsafe { (*unaligned_ptr).__val.to_be() };
    println!("Result: {:X}", result);
}
