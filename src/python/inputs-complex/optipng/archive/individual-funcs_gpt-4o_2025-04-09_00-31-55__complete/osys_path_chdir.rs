fn osys_path_chdir<'a>(
    buffer: &'a mut [u8],
    old_path: &'a str,
    new_dirname: &'a str,
) -> Option<&'a str> {
    let mut path = old_path;
    while let Some(ptr) = path.find('/') {
        path = &path[ptr + 1..];
    }

    let dirlen = new_dirname.len();
    if dirlen + path.len() + 2 >= buffer.len() {
        return None;
    }

    if dirlen > 0 {
        buffer[..dirlen].copy_from_slice(new_dirname.as_bytes());
        if !new_dirname.ends_with('/') {
            buffer[dirlen] = b'/';
        }
    }

    buffer[dirlen + 1..dirlen + 1 + path.len()].copy_from_slice(path.as_bytes());
    Some(std::str::from_utf8(&buffer[..dirlen + 1 + path.len()]).unwrap())
}

fn main() {
    let mut buffer = vec![0u8; 256];
    let old_path = "some/old/path";
    let new_dirname = "new/dir";

    if let Some(new_path) = osys_path_chdir(&mut buffer, old_path, new_dirname) {
        println!("New path: {}", new_path);
    } else {
        println!("Buffer size is too small.");
    }
}
