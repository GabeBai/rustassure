use std::os::raw::{c_int, c_void};

#[repr(C)]
union SigVal {
    sival_int: c_int,
    sival_ptr: *mut c_void,
}

#[repr(C)]
union SigActionU {
    __sa_handler: extern "C" fn(c_int),
    __sa_sigaction: extern "C" fn(c_int, *mut SigInfo, *mut c_void),
}

fn _OSSwapInt32(data: u32) -> u32 {
    data.to_be()
}

fn main() {
    // Your main function logic here
}
