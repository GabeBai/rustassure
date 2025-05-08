use std::ffi::{CString, CStr};
use std::os::raw::c_char;

fn osys_path_chdir(buffer: &mut [u8], bufsize: usize, old_path: &CStr, new_dirname: &CStr) -> Option<&CStr> {
    let old_path = old_path.to_str().unwrap();
    let new_dirname = new_dirname.to_str().unwrap();

    let mut path = old_path;
    loop {
        if let Some(idx) = path.find('/') {
            path = &path[idx + 1..];
        } else {
            break;
        }
    }

    let dirlen = new_dirname.len();
    if dirlen + path.len() + 2 >= bufsize {
        return None;
    }

    let mut buffer_str = CString::new(new_dirname).unwrap();
    if !buffer_str.to_bytes().ends_with(&[b'/']) {
        buffer_str.push('/');
    }

    buffer_str.extend(path.as_bytes());

    Some(CStr::from_bytes_with_nul(buffer_str.as_bytes()).unwrap())
}

fn main() {
    let bufsize = 100;
    let mut buffer = vec![0; bufsize];
    let old_path = CString::new("/path/to/old").unwrap();
    let new_dirname = CString::new("new").unwrap();

    if let Some(new_path) = osys_path_chdir(&mut buffer, bufsize, &old_path, &new_dirname) {
        println!("New path: {:?}", new_path.to_string_lossy());
    } else {
        println!("Error: Buffer size not sufficient.");
    }
}
