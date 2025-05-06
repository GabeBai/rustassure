use std::ffi::CString;
use std::os::raw::c_char;

extern "C" {
    fn remove(filename: *const c_char) -> i32;
}

fn osys_unlink(path: &str) -> i32 {
    let c_path = CString::new(path).expect("CString::new failed");
    let result = unsafe { remove(c_path.as_ptr()) };
    result
}
