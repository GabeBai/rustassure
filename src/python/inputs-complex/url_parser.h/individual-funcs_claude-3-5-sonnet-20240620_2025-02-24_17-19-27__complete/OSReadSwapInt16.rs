use core::mem::transmute;

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
    __val: core::cell::Cell<u16>,
}

#[repr(C, packed)]
struct OSUnalignedU32 {
    __val: core::cell::Cell<u32>,
}

#[repr(C, packed)]
struct OSUnalignedU64 {
    __val: core::cell::Cell<u64>,
}

#[inline]
unsafe fn OSReadSwapInt16(base: *const libc::c_void, offset: usize) -> u16 {
    let ptr = (base as usize + offset) as *const OSUnalignedU16;
    _OSSwapInt16((*ptr).__val.get())
}