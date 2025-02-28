use std::ptr;

#[repr(C)]
#[derive(Debug)]
struct _OSUnalignedU16 {
    __val: u16,
}

fn os_read_swap_int16(base: *const std::ffi::c_void, offset: usize) -> u16 {
    let base_ptr = base as usize + offset;
    let unaligned = unsafe { &*(base_ptr as *const _OSUnalignedU16) };
    u16::from_be(unaligned.__val)
}

fn main() {
    let base: *const std::ffi::c_void = std::ptr::null();
    let offset: usize = 0;
    let result = os_read_swap_int16(base, offset);
    println!("Result: {}", result);
}
