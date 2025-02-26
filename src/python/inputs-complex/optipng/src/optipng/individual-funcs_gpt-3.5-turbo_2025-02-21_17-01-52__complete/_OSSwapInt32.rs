use std::os::raw::c_int;

struct __sbuf {
    _base: *mut u8,
    _size: c_int,
}

union sigval {
    sival_int: c_int,
    sival_ptr: *mut std::ffi::c_void,
}

// Equivalent Rust code for the _OSSwapInt32 function
fn _OSSwapInt32(data: u32) -> u32 {
    data.to_be()
}
