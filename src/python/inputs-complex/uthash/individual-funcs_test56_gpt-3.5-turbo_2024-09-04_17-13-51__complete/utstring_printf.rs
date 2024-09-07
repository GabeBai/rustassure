use std::ffi::CStr;
use std::os::raw::c_char;
use std::os::raw::c_void;

#[repr(C)]
pub struct UT_string {
    d: *mut c_char,
    n: usize,
    i: usize,
}

extern "C" {
    fn utstring_printf(s: *mut UT_string, fmt: *const c_char, ...) -> c_void;
}

fn main() {
    let mut ut_string = UT_string {
        d: std::ptr::null_mut(),
        n: 0,
        i: 0,
    };

    let c_string = CStr::from_bytes_with_nul(b"name\0").unwrap();

    unsafe {
        utstring_printf(&mut ut_string, c_string.as_ptr(), "name".as_ptr());
    }
}
