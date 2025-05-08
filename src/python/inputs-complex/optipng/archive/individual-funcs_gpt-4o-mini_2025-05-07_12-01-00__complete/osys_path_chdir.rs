use std::ffi::CStr;
use std::ptr;

pub fn osys_path_chdir(buffer: &mut [u8], bufsize: usize, old_path: *const i8, new_dirname: *const i8) -> *mut i8 {
    let mut path = unsafe { CStr::from_ptr(old_path).to_str().unwrap() };
    let mut ptr: Option<usize> = None;

    while let Some(pos) = path.find('/') {
        path = &path[pos + 1..];
    }

    let dirlen = unsafe { CStr::from_ptr(new_dirname).to_str().unwrap().len() };
    if dirlen + path.len() + 2 >= bufsize {
        return ptr::null_mut();
    }

    if dirlen > 0 {
        let new_dirname_str = unsafe { CStr::from_ptr(new_dirname).to_str().unwrap() };
        buffer[..dirlen].copy_from_slice(new_dirname_str.as_bytes());
        if !buffer[dirlen - 1].is_ascii() || buffer[dirlen - 1] != b'/' {
            buffer[dirlen] = b'/';
        }
    }

    buffer[dirlen..dirlen + path.len()].copy_from_slice(path.as_bytes());
    buffer[dirlen + path.len()] = 0; // Null-terminate the string

    buffer.as_mut_ptr() as *mut i8
}
