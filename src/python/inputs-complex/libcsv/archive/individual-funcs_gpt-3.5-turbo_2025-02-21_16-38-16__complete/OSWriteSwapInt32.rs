use std::mem;

#[repr(C)]
union sigval {
    sival_int: i32,
    sival_ptr: *mut std::ffi::c_void,
}

#[repr(C)]
union __sigaction_u {
    __sa_handler: extern "C" fn(i32),
    __sa_sigaction: extern "C" fn(i32, *mut libc::siginfo, *mut std::ffi::c_void),
}

#[repr(C, packed)]
struct _OSUnalignedU32 {
    __val: u32,
}

fn OSWriteSwapInt32(base: *mut std::ffi::c_void, offset: usize, data: u32) {
    let base = base as usize;
    let unaligned = (base + offset) as *mut _OSUnalignedU32;
    unsafe {
        (*unaligned).__val = data.to_be();
    }
}
