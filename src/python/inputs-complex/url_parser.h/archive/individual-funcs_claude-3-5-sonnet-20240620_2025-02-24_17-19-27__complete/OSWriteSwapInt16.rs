use std::mem::transmute;

#[repr(C)]
union Sigval {
    sival_int: i32,
    sival_ptr: *mut libc::c_void,
}

#[repr(C)]
union SigactionU {
    __sa_handler: unsafe extern "C" fn(i32),
    __sa_sigaction: unsafe extern "C" fn(i32, *mut libc::c_void, *mut libc::c_void),
}

#[repr(C, packed)]
struct OSUnalignedU16 {
    __val: core::cell::UnsafeCell<u16>,
}

#[repr(C, packed)]
struct OSUnalignedU32 {
    __val: core::cell::UnsafeCell<u32>,
}

#[repr(C, packed)]
struct OSUnalignedU64 {
    __val: core::cell::UnsafeCell<u64>,
}

#[inline]
fn os_write_swap_int16(base: *mut libc::c_void, offset: usize, data: u16) {
    unsafe {
        let ptr = (base as usize + offset) as *mut OSUnalignedU16;
        (*ptr).__val.get().write(data.to_be());
    }
}