use std::os::raw::c_int;
use std::os::raw::c_char;
use std::os::unix::io::RawFd;

#[link(name = "c")]
extern {
    static stdout: *mut std::ffi::c_void;
    fn putc(c: c_int, stream: *mut std::ffi::c_void) -> c_int;
}

fn putchar(c: c_int) -> c_int {
    unsafe {
        putc(c, stdout)
    }
}
