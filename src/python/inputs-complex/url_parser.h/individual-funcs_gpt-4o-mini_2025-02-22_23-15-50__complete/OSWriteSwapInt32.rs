use std::mem::transmute;

#[repr(C, packed)]
struct OSUnalignedU32 {
    __val: u32,
}

fn os_write_swap_int32(base: *mut std::ffi::c_void, offset: usize, data: u32) {
    let base_offset = unsafe { (base as usize).wrapping_add(offset) };
    let ptr = base_offset as *mut OSUnalignedU32;
    unsafe {
        (*ptr).__val = data.to_le(); // Assuming _OSSwapInt32 is a little-endian swap
    }
}
