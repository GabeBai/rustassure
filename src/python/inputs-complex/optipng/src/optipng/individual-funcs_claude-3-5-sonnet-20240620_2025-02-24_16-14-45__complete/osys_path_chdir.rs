use std::ffi::CStr;
use std::os::raw::c_char;

#[no_mangle]
pub unsafe extern "C" fn osys_path_chdir(
    buffer: *mut c_char,
    bufsize: usize,
    old_path: *const c_char,
    new_dirname: *const c_char,
) -> *mut c_char {
    let path = CStr::from_ptr(old_path);
    let new_dirname = CStr::from_ptr(new_dirname);

    let path_str = path.to_str().unwrap();
    let new_dirname_str = new_dirname.to_str().unwrap();

    let last_separator = path_str.rfind(|c| c == '/' || c == ':').map(|i| i + 1).unwrap_or(0);
    let path = &path_str[last_separator..];

    let dirlen = new_dirname_str.len();
    if dirlen + path.len() + 2 >= bufsize {
        return std::ptr::null_mut();
    }

    let mut result = String::with_capacity(bufsize);
    if dirlen > 0 {
        result.push_str(new_dirname_str);
        if !new_dirname_str.ends_with('/') && !new_dirname_str.ends_with(':') {
            result.push('/');
        }
    }
    result.push_str(path);

    let c_result = std::ffi::CString::new(result).unwrap();
    let len = c_result.as_bytes_with_nul().len();
    std::ptr::copy_nonoverlapping(c_result.as_ptr(), buffer, len);

    buffer
}