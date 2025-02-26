use std::ptr;

#[repr(C)]
struct _OSUnalignedU32 {
    __val: u32,
}

extern "C" {
    fn OSSwapInt32(val: u32) -> u32;
}

fn OSReadSwapInt32(base: *const std::ffi::c_void, offset: usize) -> u32 {
    let base_ptr = base as usize + offset;
    let unaligned_ptr = base_ptr as *const _OSUnalignedU32;
    let unaligned = unsafe { &*unaligned_ptr };
    unsafe { OSSwapInt32(unaligned.__val) }
}

fn main() {
    // Example usage
    let base: *const std::ffi::c_void = std::ptr::null();
    let offset: usize = 0;
    let result = OSReadSwapInt32(base, offset);
    println!("Result: {}", result);
}
