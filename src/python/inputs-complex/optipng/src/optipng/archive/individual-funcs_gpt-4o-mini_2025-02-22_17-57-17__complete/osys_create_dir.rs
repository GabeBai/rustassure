use std::ffi::CStr;
use std::fs;
use std::os::unix::fs::MetadataExt;
use std::path::Path;

fn osys_create_dir(dirname: *const i8) -> i32 {
    // Convert the C string to a Rust string
    let c_str = unsafe { CStr::from_ptr(dirname) };
    let dirname_str = match c_str.to_str() {
        Ok(s) => s,
        Err(_) => return -1, // Return -1 on error
    };

    // Check the length of the directory name
    let len = dirname_str.len();
    if len == 0 {
        return 0;
    }

    // Check if the directory exists
    if let Ok(metadata) = fs::metadata(dirname_str) {
        // Check if it is a directory
        if metadata.is_dir() {
            return 0;
        } else {
            return -1; // Not a directory
        }
    }

    // Attempt to create the directory
    match fs::create_dir_all(dirname_str) {
        Ok(_) => 0, // Success
        Err(_) => -1, // Error creating directory
    }
}
