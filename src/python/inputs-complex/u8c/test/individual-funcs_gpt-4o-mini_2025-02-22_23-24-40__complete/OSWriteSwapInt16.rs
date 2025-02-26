use std::mem;

#[repr(C, packed)]
struct OSUnalignedU16 {
    __val: u16,
}

fn os_write_swap_int16(base: *mut std::ffi::c_void, offset: usize, data: u16) {
    let ptr = (base as usize + offset) as *mut OSUnalignedU16;
    unsafe {
        (*ptr).__val = data.to_be(); // Assuming _OSSwapInt16 is a byte swap for big-endian
    }
}
