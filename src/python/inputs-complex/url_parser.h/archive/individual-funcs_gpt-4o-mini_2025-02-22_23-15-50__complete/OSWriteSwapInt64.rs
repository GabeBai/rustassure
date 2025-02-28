use std::mem::transmute;

#[repr(C, packed)]
struct OSUnalignedU64 {
    __val: u64,
}

fn os_write_swap_int64(base: *mut std::ffi::c_void, offset: usize, data: u64) {
    let base_offset = unsafe { (base as usize).wrapping_add(offset) };
    let ptr: &mut OSUnalignedU64 = unsafe { transmute(base_offset) };
    ptr.__val = data.to_le(); // Assuming _OSSwapInt64 is a byte swap
}
