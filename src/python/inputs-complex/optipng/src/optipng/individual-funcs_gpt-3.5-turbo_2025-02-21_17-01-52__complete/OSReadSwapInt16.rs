use std::ptr;

#[repr(C)]
struct _OSUnalignedU16 {
    __val: u16,
}

fn os_read_swap_int16(base: *const std::ffi::c_void, offset: usize) -> u16 {
    let unaligned_ptr = (base as usize + offset) as *const _OSUnalignedU16;
    let unaligned = unsafe { &*unaligned_ptr };
    u16::from_be(unaligned.__val)
}

fn main() {
    let base: *const std::ffi::c_void = std::ptr::null();
    let offset: usize = 0;
    let result = os_read_swap_int16(base, offset);
    println!("{}", result);
}
