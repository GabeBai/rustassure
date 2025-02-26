union SigVal {
    sival_int: i32,
    sival_ptr: *mut libc::c_void,
}

union SigactionU {
    __sa_handler: unsafe extern "C" fn(i32),
    __sa_sigaction: unsafe extern "C" fn(i32, *mut libc::siginfo_t, *mut libc::c_void),
}

#[inline]
fn _OSSwapInt64(data: u64) -> u64 {
    data.swap_bytes()
}