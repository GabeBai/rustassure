use std::ffi::CStr;
use std::os::raw::c_char;

fn opng_strtail(str: *const c_char, num: usize) -> *const c_char {
    unsafe {
        let len = CStr::from_ptr(str).to_bytes().len();
        if len <= num {
            return str;
        }
        str.offset(len as isize - num as isize)
    }
}
