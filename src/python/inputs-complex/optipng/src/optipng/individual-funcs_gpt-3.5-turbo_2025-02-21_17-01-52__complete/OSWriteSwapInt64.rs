use std::mem;

#[repr(C)]
struct _OSUnalignedU64 {
    __val: u64,
}

fn OSWriteSwapInt64(base: *mut std::ffi::c_void, offset: usize, data: u64) {
    let base_addr = base as usize + offset;
    let unaligned_ptr = base_addr as *mut _OSUnalignedU64;
    unsafe {
        (*unaligned_ptr).__val = data.to_be();
    }
}

fn main() {
    // Example usage
    let mut data: u64 = 123456789;
    let mut buffer: [u8; 8] = [0; 8];
    let buffer_ptr = buffer.as_mut_ptr() as *mut std::ffi::c_void;
    
    OSWriteSwapInt64(buffer_ptr, 0, data);

    let result = unsafe { *(buffer.as_ptr() as *const u64) };
    println!("Result: {}", result);
}
