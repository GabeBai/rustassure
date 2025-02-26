use std::mem;

#[repr(C, packed)]
struct OSUnalignedU16 {
    __val: u16,
}

fn os_read_swap_int16(base: *const std::ffi::c_void, offset: usize) -> u16 {
    let ptr = (base as usize + offset) as *const OSUnalignedU16;
    unsafe { os_swap_int16((*ptr).__val) }
}

fn os_swap_int16(value: u16) -> u16 {
    value.swap_bytes()
}
