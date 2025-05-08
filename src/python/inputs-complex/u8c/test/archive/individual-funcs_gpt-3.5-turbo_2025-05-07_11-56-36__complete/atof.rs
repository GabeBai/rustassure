use std::os::raw::c_char;

#[no_mangle]
pub extern "C" fn atof(nptr: *const c_char) -> f64 {
    unsafe {
        let nptr_cstr = std::ffi::CStr::from_ptr(nptr);
        let nptr_str = nptr_cstr.to_str().expect("Invalid UTF-8 string");
        nptr_str.parse().unwrap_or(0.0)
    }
}
