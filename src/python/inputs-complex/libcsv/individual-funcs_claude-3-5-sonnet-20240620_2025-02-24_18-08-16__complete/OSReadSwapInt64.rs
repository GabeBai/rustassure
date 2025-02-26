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
    __val: core::sync::atomic::AtomicU16,
}

#[repr(C, packed)]
struct OSUnalignedU32 {
    __val: core::sync::atomic::AtomicU32,
}

#[repr(C, packed)]
struct OSUnalignedU64 {
    __val: core::sync::atomic::AtomicU64,
}

#[inline]
unsafe fn os_read_swap_int64(base: *const std::ffi::c_void, offset: usize) -> u64 {
    let ptr = (base as usize + offset) as *const OSUnalignedU64;
    let val = (*ptr).__val.load(core::sync::atomic::Ordering::SeqCst);
    val.swap_bytes()
}