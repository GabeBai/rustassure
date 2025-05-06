use std::ffi::CString;
use std::os::raw::c_char;
use std::os::raw::c_int;
use std::os::raw::c_ulong;
use std::time::Duration;

#[repr(C)]
pub struct timespec {
    tv_sec: i64,
    tv_nsec: i64,
}

#[repr(C)]
pub struct fd_set {
    __fds_bits: [c_ulong; 128],
}

#[repr(C)]
pub union pthread_attr_t {
    __size: [u8; 56],
    __align: i64,
}

#[link(name = "c")]
extern "C" {
    fn vsnprintf(s: *mut c_char, maxlen: usize, format: *const c_char, args: ...) -> c_int;
}

fn opng_snprintf_impl(buffer: &mut [u8], buffer_size: usize, format: &str, args: ...) -> c_int {
    let format_c = CString::new(format).expect("CString::new failed");
    let result: c_int;
    unsafe {
        result = vsnprintf(buffer.as_mut_ptr() as *mut c_char, buffer_size, format_c.as_ptr(), args);
    }
    if result < 0 || result as usize >= buffer_size {
        if buffer_size > 0 {
            buffer[buffer_size - 1] = 0;
        }
        return -1;
    }
    result
}

fn main() {
    let mut buffer = [0u8; 100];
    let result = opng_snprintf_impl(&mut buffer, buffer.len(), "Hello, %s!", "World");
    println!("Result: {}", result);
    println!("Buffer: {:?}", String::from_utf8_lossy(&buffer));
}
