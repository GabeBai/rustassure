use std::ffi::CString;
use std::ffi::CStr;
use std::os::raw::c_char;

fn strdup(str: *const c_char) -> *mut c_char {
    let c_str = unsafe { CStr::from_ptr(str) };
    let n = c_str.to_bytes().len() + 1;
    let dup = unsafe { libc::malloc(n) as *mut c_char };
    if !dup.is_null() {
        unsafe {
            libc::strcpy(dup, str);
        }
    }
    dup
}
