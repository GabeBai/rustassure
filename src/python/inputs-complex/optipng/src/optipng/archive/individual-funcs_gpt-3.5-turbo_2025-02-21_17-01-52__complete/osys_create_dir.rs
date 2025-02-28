use std::ffi::CStr;
use std::fs;
use std::os::raw::{c_char, c_int, c_uint};
use std::os::unix::fs::PermissionsExt;

fn osys_create_dir(dirname: *const c_char) -> c_int {
    unsafe {
        let c_str = CStr::from_ptr(dirname);
        let dir_name = c_str.to_str().expect("Invalid UTF-8 in directory name");

        if dir_name.is_empty() {
            return 0;
        }

        if let Ok(metadata) = fs::metadata(dir_name) {
            if metadata.permissions().mode() & 0o40000 != 0 {
                return 0;
            }
        }

        match fs::create_dir(dir_name) {
            Ok(_) => 0,
            Err(_) => -1,
        }
    }
}

fn main() {
    let dirname = "/path/to/directory";
    let result = osys_create_dir(dirname.as_ptr() as *const c_char);
    println!("Result: {}", result);
}
