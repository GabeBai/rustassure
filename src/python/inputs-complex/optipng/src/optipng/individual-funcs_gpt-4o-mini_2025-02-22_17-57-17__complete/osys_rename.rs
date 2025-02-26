use std::fs;

fn osys_rename(src_path: &str, dest_path: &str, clobber: i32) -> i32 {
    if clobber == 0 {
        if fs::metadata(dest_path).is_ok() {
            return -1;
        }
    }
    match fs::rename(src_path, dest_path) {
        Ok(_) => 0,
        Err(_) => -1,
    }
}
