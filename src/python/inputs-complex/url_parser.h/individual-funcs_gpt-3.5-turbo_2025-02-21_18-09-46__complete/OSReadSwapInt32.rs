use std::os::raw::{c_void, c_int};

#[repr(C)]
union sigval {
    sival_int: c_int,
    sival_ptr: *mut c_void,
}

#[repr(C)]
union __sigaction_u {
    __sa_handler: extern "C" fn(c_int),
    __sa_sigaction: extern "C" fn(c_int, *mut libc::siginfo, *mut c_void),
}

#[repr(C)]
struct _OSUnalignedU16 {
    __val: u16,
}

#[repr(C)]
struct _OSUnalignedU32 {
    __val: u32,
}

#[repr(C)]
struct _OSUnalignedU64 {
    __val: u64,
}

fn OSReadSwapInt32(base: *const std::ffi::c_void, offset: usize) -> u32 {
    unsafe {
        let base_ptr = (base as usize + offset) as *const _OSUnalignedU32;
        libc::OSSwapInt32((*base_ptr).__val)
    }
}
