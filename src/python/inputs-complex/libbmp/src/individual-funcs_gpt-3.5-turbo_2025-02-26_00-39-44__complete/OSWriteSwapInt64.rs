use std::mem;

#[repr(C)]
pub struct _OSUnalignedU64 {
    __val: u64,
}

pub fn OSWriteSwapInt64(base: *mut std::ffi::c_void, offset: usize, data: u64) {
    let base_ptr = base as usize + offset;
    let base_ptr = base_ptr as *mut _OSUnalignedU64;
    
    unsafe {
        (*base_ptr).__val = data.swap_bytes();
    }
}

fn main() {
    // Example usage
    let mut data: u64 = 123456789;
    let mut base: *mut std::ffi::c_void = std::ptr::null_mut();
    let offset: usize = 0;

    OSWriteSwapInt64(base, offset, data);

    println!("Data after swapping bytes: {}", data);
}
