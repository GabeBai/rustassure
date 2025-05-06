use std::os::raw::{c_char, c_uchar};
use std::ffi::CStr;

fn opng_strtail(str: *const c_char, num: usize) -> *const c_char {
    unsafe {
        let c_str = CStr::from_ptr(str);
        let len = c_str.to_bytes().len();
        
        if len <= num {
            return str;
        }
        
        let tail_start = len - num;
        let tail_ptr = str.offset(tail_start as isize);
        
        tail_ptr
    }
}
