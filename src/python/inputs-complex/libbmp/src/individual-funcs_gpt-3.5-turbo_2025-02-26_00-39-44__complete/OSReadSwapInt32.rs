use std::os::raw::{c_void, c_ulong};
use std::ptr;

#[repr(C)]
struct _OSUnalignedU32 {
    __val: u32,
}

fn OSReadSwapInt32(_base: *const c_void, _offset: c_ulong) -> u32 {
    let base = _base as usize;
    let offset = _offset as usize;
    
    let base_ptr = (base + offset) as *const _OSUnalignedU32;
    let unaligned_u32 = unsafe { &*base_ptr };
    
    unaligned_u32.__val.swap_bytes()
}

fn main() {
    // Example usage
    let base_address: *const c_void = ptr::null();
    let offset: c_ulong = 0;
    
    let result = OSReadSwapInt32(base_address, offset);
    println!("Result: {}", result);
}
