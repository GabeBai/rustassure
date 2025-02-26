#[repr(C)]
union Sigval {
    sival_int: i32,
    sival_ptr: *mut std::ffi::c_void,
}

#[repr(C)]
union SigactionU {
    __sa_handler: unsafe extern "C" fn(i32),
    __sa_sigaction: unsafe extern "C" fn(i32, *mut std::ffi::c_void, *mut std::ffi::c_void),
}

#[repr(C, packed)]
struct OSUnalignedU16 {
    __val: std::sync::atomic::AtomicU16,
}

#[repr(C, packed)]
struct OSUnalignedU32 {
    __val: std::sync::atomic::AtomicU32,
}

#[repr(C, packed)]
struct OSUnalignedU64 {
    __val: std::sync::atomic::AtomicU64,
}

#[inline]
unsafe fn os_read_swap_int32(base: *const std::ffi::c_void, offset: usize) -> u32 {
    let ptr = (base as usize + offset) as *const OSUnalignedU32;
    _os_swap_int32((*ptr).__val.load(std::sync::atomic::Ordering::SeqCst))
}