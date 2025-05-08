use std::borrow::Cow;
use std::fs;
use std::fs::metadata;
use std::path::Path;

fn osys_create_dir(path: Cow<str>) -> Result<(), std::io::Error> {
    let path_ref: &Path = Path::new(&*path); // Convert Cow to &Path

    // Check if the directory already exists
    match metadata(&path_ref) {
        Ok(meta) => {
            if meta.is_dir() {
                return Ok(()); // Directory already exists
            } else {
                return Err(std::io::Error::new(std::io::ErrorKind::AlreadyExists, "A file with the same name exists"));
            }
        }
        Err(_) => {
            // Directory does not exist, create it
            fs::create_dir_all(&path_ref)?;
            return Ok(());
        }
    }
}
