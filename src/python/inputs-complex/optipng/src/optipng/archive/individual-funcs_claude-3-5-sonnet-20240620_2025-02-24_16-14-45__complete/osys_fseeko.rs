use std::os::raw::c_int;
use std::os::raw::c_long;
use libc::FILE;

pub fn osys_fseeko(stream: *mut FILE, offset: c_long, whence: c_int) -> c_int {
    unsafe { libc::fseek(stream, offset, whence) }
}