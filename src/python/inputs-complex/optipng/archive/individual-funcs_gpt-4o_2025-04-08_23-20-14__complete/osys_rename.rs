use std::fs;
use std::io;
use std::path::Path;

fn osys_rename(src_path: &str, dest_path: &str, clobber: bool) -> io::Result<()> {
    if !clobber {
        if Path::new(dest_path).exists() {
            return Err(io::Error::new(io::ErrorKind::AlreadyExists, "Destination path exists"));
        }
    }
    fs::rename(src_path, dest_path)
}
