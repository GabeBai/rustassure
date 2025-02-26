use std::ffi::{CStr, CString};
use std::os::raw::c_char;

extern "C" {
    fn osys_path_mkbak(buffer: *mut c_char, bufsize: usize, path: *const c_char) -> *mut c_char;
}

fn main() {
    let path = CString::new("example.txt").unwrap();
    let mut buffer: [c_char; 1024] = [0; 1024]; // Adjust the size as needed

    unsafe {
        let result = osys_path_mkbak(buffer.as_mut_ptr(), buffer.len(), path.as_ptr());
        if result.is_null() {
            println!("Failed to create backup path");
        } else {
            let result_str = CStr::from_ptr(result as *const c_char).to_string_lossy();
            println!("Backup path: {}", result_str);
        }
    }
}
