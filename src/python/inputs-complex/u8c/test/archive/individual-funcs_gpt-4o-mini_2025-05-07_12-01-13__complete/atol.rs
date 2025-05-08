pub fn atol(nptr: *const i8) -> i64 {
    let c_str = unsafe { std::ffi::CStr::from_ptr(nptr) };
    let str_slice = c_str.to_str().unwrap();
    str_slice.parse::<i64>().unwrap_or(0)
}
