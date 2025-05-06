use std::ffi::{CString, CStr};
use std::os::raw::{c_char, c_int};
use std::ptr;

fn osys_path_chdir(buffer: &mut [u8], old_path: &CStr, new_dirname: &CStr) -> Option<&CStr> {
    let mut path = old_path.to_bytes();
    let mut dirlen = new_dirname.to_bytes().len();

    loop {
        if let Some(pos) = path.iter().position(|&c| c == b'/') {
            path = &path[pos + 1..];
        } else {
            break;
        }
    }

    if dirlen + path.len() + 2 >= buffer.len() {
        return None;
    }

    if dirlen > 0 {
        buffer[..dirlen].copy_from_slice(new_dirname.to_bytes());
        if buffer[dirlen - 1] != b'/' {
            buffer[dirlen] = b'/';
            dirlen += 1;
        }
    }

    buffer[dirlen..].copy_from_slice(path);
    Some(CStr::from_bytes_with_nul(&buffer[..dirlen + path.len() + 1]).unwrap())
}

fn main() {
    let old_path = CString::new("/path/to/old").expect("CString::new failed");
    let new_dirname = CString::new("/new/dir").expect("CString::new failed");
    let mut buffer = [0; 256];

    if let Some(result) = osys_path_chdir(&mut buffer, &old_path, &new_dirname) {
        println!("Result: {:?}", result.to_str().unwrap());
    } else {
        println!("Error: Buffer too small");
    }
}
