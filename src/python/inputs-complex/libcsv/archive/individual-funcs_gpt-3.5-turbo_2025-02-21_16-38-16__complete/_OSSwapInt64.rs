use std::os::raw::{c_int, c_void};

#[repr(C)]
union sigval {
    sival_int: c_int,
    sival_ptr: *mut c_void,
}

#[repr(C)]
union siginfo {
    // Define the fields of struct __siginfo here
}

#[repr(C)]
union __sigaction_u {
    __sa_handler: extern "C" fn(c_int),
    __sa_sigaction: extern "C" fn(c_int, *mut siginfo, *mut c_void),
}

fn _OSSwapInt64(data: u64) -> u64 {
    data.to_be()
}
