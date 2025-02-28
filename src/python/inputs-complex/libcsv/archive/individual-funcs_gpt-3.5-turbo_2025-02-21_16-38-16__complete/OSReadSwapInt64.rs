use std::os::raw::{c_int, c_void};

#[repr(C)]
union Sigval {
    sival_int: i32,
    sival_ptr: *mut c_void,
}

#[repr(C)]
union SigactionU {
    __sa_handler: extern "C" fn(c_int),
    __sa_sigaction: extern "C" fn(c_int, *mut Siginfo, *mut c_void),
}

#[repr(C, packed)]
struct OSUnalignedU16 {
    __val: u16,
}

#[repr(C, packed)]
struct OSUnalignedU32 {
    __val: u32,
}

#[repr(C, packed)]
struct OSUnalignedU64 {
    __val: u64,
}

fn OSReadSwapInt64(base: *const std::ffi::c_void, offset: usize) -> u64 {
    unsafe {
        let base_ptr = (base as usize + offset) as *const OSUnalignedU64;
        (*base_ptr).__val
    }
}
