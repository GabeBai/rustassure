#![allow(unaligned_references)]
#[no_mangle]
#[no_mangle]
fn osys_unlink(path: &str) -> i32 {
    std::fs::remove_file(path).map(|_| 0).unwrap_or_else(|_| -1)
}
