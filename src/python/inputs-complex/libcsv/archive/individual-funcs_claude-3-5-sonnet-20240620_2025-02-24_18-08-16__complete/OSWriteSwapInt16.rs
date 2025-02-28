use std::mem::transmute;

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
fn os_write_swap_int16(base: *mut std::ffi::c_void, offset: usize, data: u16) {
    unsafe {
        let ptr = (base as usize + offset) as *mut OSUnalignedU16;
        (*ptr).__val.store(_os_swap_int16(data), std::sync::atomic::Ordering::Relaxed);
    }
}

fn _os_swap_int16(data: u16) -> u16 {
    data.to_be()
}