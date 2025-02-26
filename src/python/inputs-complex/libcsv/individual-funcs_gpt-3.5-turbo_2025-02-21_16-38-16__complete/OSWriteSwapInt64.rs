use std::os::raw::{c_void, c_int};

#[repr(C)]
union Sigval {
    sival_int: c_int,
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

fn OSWriteSwapInt64(base: *mut c_void, offset: usize, data: u64) {
    unsafe {
        let base_ptr = (base as usize + offset) as *mut OSUnalignedU64;
        (*base_ptr).__val = data.to_be();
    }
}
