use std::mem;

#[repr(C)]
#[derive(Debug, Copy, Clone)]
struct _OSUnalignedU16 {
    __val: u16,
}

fn OSReadSwapInt16(base: *const std::ffi::c_void, offset: usize) -> u16 {
    let base_addr = base as usize + offset;
    let unaligned_ptr = base_addr as *const _OSUnalignedU16;
    let unaligned = unsafe { *unaligned_ptr };
    u16::from_be(unaligned.__val)
}

fn main() {
    // Example usage
    let base: *const std::ffi::c_void = std::ptr::null();
    let offset: usize = 0;
    let result = OSReadSwapInt16(base, offset);
    println!("Result: {}", result);
}
