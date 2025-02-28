union SigVal {
    sival_int: i32,
    sival_ptr: *mut libc::c_void,
}

union SigActionU {
    __sa_handler: unsafe extern "C" fn(i32),
    __sa_sigaction: unsafe extern "C" fn(i32, *mut libc::siginfo_t, *mut libc::c_void),
}

#[inline]
fn _OSSwapInt16(data: u16) -> u16 {
    data.rotate_left(8)
}