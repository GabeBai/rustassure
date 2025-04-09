use std::fs;

fn osys_unlink(path: &str) -> i32 {
    match fs::remove_file(path) {
        Ok(_) => 0,
        Err(_) => -1,
    }
}
