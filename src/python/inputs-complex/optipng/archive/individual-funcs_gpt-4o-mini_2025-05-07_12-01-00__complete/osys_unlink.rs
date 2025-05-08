use std::fs;

fn osys_unlink(path: *const i8) -> i32 {
    let c_str = unsafe { std::ffi::CStr::from_ptr(path) };
    let path_str = c_str.to_string_lossy();
    match fs::remove_file(path_str.as_ref()) {
        Ok(_) => 0,
        Err(_) => -1,
    }
}
