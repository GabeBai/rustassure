use std::ffi::CStr;

fn u8strlen(s: *const libc::c_char) -> libc::c_int {
    let cstr = unsafe { CStr::from_ptr(s) };
    let utf8_str = cstr.to_str().unwrap_or("");
    utf8_str.chars().count() as libc::c_int
}