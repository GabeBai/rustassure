#![allow(unaligned_references)]
use std::ffi::CStr;
use std::os::raw::c_char;
use std::ptr;

#[no_mangle]
#[no_mangle]
fn osys_path_chdir<'a>(
    buffer: &'a mut [u8],
    old_path: &CStr,
    new_dirname: &CStr,
) -> Option<&'a mut [u8]> {
    let old_path_bytes = old_path.to_bytes();
    let new_dirname_bytes = new_dirname.to_bytes();

    // Find the last occurrence of '/' or ':' in old_path
    let mut path = old_path_bytes;
    if let Some(pos) = old_path_bytes.iter().rposition(|&c| c == b'/' || c == b':') {
        path = &old_path_bytes[pos + 1..];
    }

    let dirlen = new_dirname_bytes.len();
    if dirlen + path.len() + 2 >= buffer.len() {
        return None;
    }

    // Copy new_dirname to buffer
    buffer[..dirlen].copy_from_slice(new_dirname_bytes);

    // Add '/' if necessary
    if dirlen > 0 && !matches!(buffer[dirlen - 1], b'/' | b':') {
        buffer[dirlen] = b'/';
    }

    // Copy the rest of the path
    buffer[dirlen + 1..dirlen + 1 + path.len()].copy_from_slice(path);

    Some(&mut buffer[..dirlen + 1 + path.len()])
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    let mut buffer = vec![0u8; 256];
    let old_path = CStr::from_bytes_with_nul(b"/usr/local/bin\0").unwrap();
    let new_dirname = CStr::from_bytes_with_nul(b"/new/path\0").unwrap();

    if let Some(result) = osys_path_chdir(&mut buffer, &old_path, &new_dirname) {
        println!("Result: {:?}", std::str::from_utf8(result).unwrap());
    } else {
        println!("Buffer too small");
    }
}
