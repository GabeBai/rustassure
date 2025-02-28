use std::ffi::CString;

fn osys_path_chdir(buffer: &mut [u8], old_path: &str, new_dirname: &str) -> Option<&str> {
    let mut path = old_path;
    while let Some(ptr) = path.find(&['/', ':'] as &[char]) {
        path = &path[ptr + 1..];
    }

    let dirlen = new_dirname.len();
    if dirlen + path.len() + 2 >= buffer.len() {
        return None;
    }

    buffer[..dirlen].copy_from_slice(new_dirname.as_bytes());
    if !new_dirname.is_empty() && !['/', ':'].contains(&buffer[dirlen - 1] as char) {
        buffer[dirlen] = '/' as u8;
    }

    buffer[dirlen + 1..].copy_from_slice(path.as_bytes());
    Some(std::str::from_utf8(&buffer).unwrap())
}

fn main() {
    let mut buffer = [0; 256];
    let old_path = "/path/to/old";
    let new_dirname = "new_dir";

    if let Some(result) = osys_path_chdir(&mut buffer, old_path, new_dirname) {
        println!("Result: {}", result);
    } else {
        println!("Error: Buffer too small");
    }
}
