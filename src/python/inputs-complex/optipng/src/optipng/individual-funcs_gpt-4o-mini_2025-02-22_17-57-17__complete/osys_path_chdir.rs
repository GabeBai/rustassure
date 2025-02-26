use std::ffi::CStr;
use std::os::raw::c_char;
use std::ptr;

fn osys_path_chdir(buffer: &mut [u8], bufsize: usize, old_path: *const c_char, new_dirname: *const c_char) -> *mut c_char {
    let old_path_str = unsafe { CStr::from_ptr(old_path).to_string_lossy() };
    let new_dirname_str = unsafe { CStr::from_ptr(new_dirname).to_string_lossy() };

    let mut path = old_path_str.as_ref();
    let mut dirlen = new_dirname_str.len();

    // Find the last occurrence of '/' or ':' in the path
    while let Some(pos) = path.find(&['/', ':'][..]) {
        path = &path[pos + 1..];
    }

    // Check if the combined length exceeds the buffer size
    if dirlen + path.len() + 2 >= bufsize {
        return ptr::null_mut();
    }

    if dirlen > 0 {
        // Copy new_dirname to buffer
        let new_dirname_bytes = new_dirname_str.as_bytes();
        buffer[..dirlen].copy_from_slice(new_dirname_bytes);
        
        // Ensure the last character is a '/'
        if !new_dirname_bytes.is_empty() && !new_dirname_bytes.ends_with(&b"/"[..]) {
            buffer[dirlen] = b'/';
            dirlen += 1;
        }
    }

    // Copy the path to the buffer
    let path_bytes = path.as_bytes();
    buffer[dirlen..dirlen + path.len()].copy_from_slice(path_bytes);

    // Return the buffer as a pointer
    buffer[dirlen + path.len()] = 0; // Null-terminate the string
    buffer.as_mut_ptr() as *mut c_char
}
