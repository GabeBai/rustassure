use std::mem;

#[repr(C)]
union Sigval {
    sival_int: i32,
    sival_ptr: *mut std::ffi::c_void,
}

#[repr(C)]
union SigactionU {
    __sa_handler: Option<extern "C" fn(i32)>,
    __sa_sigaction: Option<extern "C" fn(i32, *mut libc::siginfo, *mut std::ffi::c_void)>,
}

fn _OSSwapInt16(data: u16) -> u16 {
    ((data << 8) | (data >> 8))
}

fn main() {
    // Your code here
}
