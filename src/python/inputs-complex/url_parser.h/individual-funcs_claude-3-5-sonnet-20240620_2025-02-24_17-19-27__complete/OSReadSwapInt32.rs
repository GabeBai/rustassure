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
unsafe fn os_read_swap_int32(base: *const libc::c_void, offset: usize) -> u32 {
    let ptr = (base as usize + offset) as *const OSUnalignedU32;
    let val = (*ptr).__val.get();
    u32::from_be(*val)
}