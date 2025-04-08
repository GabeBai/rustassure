use std::ffi::CStr;
use std::str;

fn osys_path_chdir<'a>(
    buffer: &'a mut [u8],
    old_path: &CStr,
    new_dirname: &CStr,
) -> Option<&'a mut [u8]> {
    let old_path_str = old_path.to_str().ok()?;
    let new_dirname_str = new_dirname.to_str().ok()?;

    let path = old_path_str.rsplit('/').next().unwrap_or("");

    let dirlen = new_dirname_str.len();
    if dirlen + path.len() + 2 >= buffer.len() {
        return None;
    }

    let mut pos = 0;
    if dirlen > 0 {
        buffer[..dirlen].copy_from_slice(new_dirname_str.as_bytes());
        pos += dirlen;
        if !new_dirname_str.ends_with('/') {
            buffer[pos] = b'/';
            pos += 1;
        }
    }

    buffer[pos..pos + path.len()].copy_from_slice(path.as_bytes());
    pos += path.len();

    Some(&mut buffer[..pos])
}

fn main() {
    // Example usage
    let mut buffer = vec![0u8; 256];
    let old_path = CStr::from_bytes_with_nul(b"/some/old/path\0").unwrap();
    let new_dirname = CStr::from_bytes_with_nul(b"/new/dir\0").unwrap();

    if let Some(result) = osys_path_chdir(&mut buffer, &old_path, &new_dirname) {
        println!("New path: {}", str::from_utf8(result).unwrap());
    } else {
        println!("Buffer too small");
    }
}
