use std::ffi::CStr;
use std::ptr;

fn strdup(s: *const libc::c_char) -> *mut libc::c_char {
    if s.is_null() {
        return ptr::null_mut();
    }

    let c_str = unsafe { CStr::from_ptr(s) };
    let bytes = c_str.to_bytes_with_nul();
    let len = bytes.len();

    let dup = unsafe { libc::malloc(len) as *mut libc::c_char };
    if !dup.is_null() {
        unsafe {
            ptr::copy_nonoverlapping(s, dup, len);
        }
    }

    dup
}