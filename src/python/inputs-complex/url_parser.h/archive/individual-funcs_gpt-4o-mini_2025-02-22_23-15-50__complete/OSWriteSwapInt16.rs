use std::mem::transmute;

#[repr(C, packed)]
struct OSUnalignedU16 {
    __val: u16,
}

fn os_write_swap_int16(base: *mut std::ffi::c_void, offset: usize, data: u16) {
    let base_offset = unsafe { (base as usize).wrapping_add(offset) };
    let ptr = base_offset as *mut OSUnalignedU16;
    unsafe {
        (*ptr).__val = data.swap_bytes();
    }
}
