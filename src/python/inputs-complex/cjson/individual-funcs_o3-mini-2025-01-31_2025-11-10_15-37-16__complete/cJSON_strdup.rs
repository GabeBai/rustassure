
pub unsafe fn cJSON_strdup(string: *const u8, hooks: *const internal_hooks) -> *mut u8 {
    use std::ffi::CStr;
    use std::ptr;

    if string.is_null() {
        return ptr::null_mut();
    }

    let c_str = CStr::from_ptr(string as *const i8);
    let bytes = c_str.to_bytes_with_nul();
    let length = bytes.len();
    let copy = ((*hooks).allocate)(length) as *mut u8;

    if copy.is_null() {
        return ptr::null_mut();
    }

    ptr::copy_nonoverlapping(string, copy, length);
    copy
}