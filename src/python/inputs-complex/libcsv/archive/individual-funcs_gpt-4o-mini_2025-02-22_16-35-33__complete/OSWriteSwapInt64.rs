#[repr(C)]
struct _OSUnalignedU64 {
    __val: std::sync::atomic::AtomicU64,
}

fn os_write_swap_int64(base: *mut std::ffi::c_void, offset: usize, data: u64) {
    let target = (base as usize + offset) as *mut _OSUnalignedU64;
    unsafe {
        (*target).__val.store(data.to_le(), std::sync::atomic::Ordering::SeqCst);
    }
}
