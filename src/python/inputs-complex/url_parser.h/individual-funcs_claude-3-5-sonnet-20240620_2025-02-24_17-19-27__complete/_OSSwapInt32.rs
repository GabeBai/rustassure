union SigVal {
    sival_int: i32,
    sival_ptr: *mut libc::c_void,
}

union SigActionU {
    __sa_handler: unsafe extern "C" fn(i32),
    __sa_sigaction: unsafe extern "C" fn(i32, *mut libc::siginfo_t, *mut libc::c_void),
}

#[inline]
fn _OSSwapInt32(mut _data: u32) -> u32 {
    _data = _data.swap_bytes();
    _data
}