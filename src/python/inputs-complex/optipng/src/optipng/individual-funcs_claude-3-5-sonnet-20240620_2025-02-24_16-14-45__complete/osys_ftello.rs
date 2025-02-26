use std::os::raw::c_long;
use libc::FILE;

pub fn osys_ftello(stream: *mut FILE) -> c_long {
    unsafe { libc::ftell(stream) }
}