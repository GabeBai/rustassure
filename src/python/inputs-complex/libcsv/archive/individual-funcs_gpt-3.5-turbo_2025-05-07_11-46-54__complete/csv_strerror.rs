use std::os::raw::{c_char, c_int};

#[repr(C)]
pub struct timespec {
    tv_sec: i64,
    tv_nsec: i64,
}

#[repr(C)]
pub struct fd_set {
    __fds_bits: [i64; 16],
}

extern {
    fn csv_strerror(error: c_int) -> *const c_char;
}

const CSV_SUCCESS: c_int = 0;
const CSV_ERROR_STRICT_CHECKING: c_int = 1;
const CSV_ERROR_MEMORY_EXHAUSTED: c_int = 2;
const CSV_ERROR_DATA_SIZE: c_int = 3;
const CSV_ERROR_INVALID_STATUS: c_int = 4;

fn main() {
    // Example usage
    let error_code = 2;
    let error_message = unsafe { csv_strerror(error_code) };
    println!("Error message: {:?}", unsafe { std::ffi::CStr::from_ptr(error_message) });
}
