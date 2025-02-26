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
fn os_write_swap_int32(base: *mut libc::c_void, offset: usize, data: u32) {
    unsafe {
        let ptr = (base as usize + offset) as *mut OSUnalignedU32;
        (*ptr).__val.store(_os_swap_int32(data), core::sync::atomic::Ordering::Relaxed);
    }
}

fn _os_swap_int32(data: u32) -> u32 {
    data.swap_bytes()
}