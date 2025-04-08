use std::fs;
use std::path::Path;
use std::os::unix::fs::PermissionsExt;

fn osys_create_dir(dirname: &str) -> i32 {
    let len = dirname.len();
    if len == 0 {
        return 0;
    }
    let path = Path::new(dirname);
    match fs::metadata(path) {
        Ok(metadata) => {
            if metadata.is_dir() {
                0
            } else {
                -1
            }
        }
        Err(_) => match fs::create_dir(path) {
            Ok(_) => 0,
            Err(_) => -1,
        },
    }
}
