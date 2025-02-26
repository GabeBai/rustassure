use std::ffi::CStr;
use std::os::raw::c_char;

pub fn osys_unlink(path: *const c_char) -> i32 {
    let path = unsafe { CStr::from_ptr(path) };
    std::fs::remove_file(path.to_str().unwrap()).map(|_| 0).unwrap_or_else(|_| -1)
}