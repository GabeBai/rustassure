#![allow(unaligned_references)]
use std::fs;
use std::io;
use std::path::Path;

#[no_mangle]
#[no_mangle]
fn osys_create_dir(dirname: &str) -> io::Result<()> {
    if dirname.is_empty() {
        return Ok(());
    }

    let path = Path::new(dirname);

    // Check if the path exists and is a directory
    if let Ok(metadata) = fs::metadata(path) {
        if metadata.is_dir() {
            return Ok(());
        } else {
            return Err(io::Error::new(io::ErrorKind::AlreadyExists, "Path exists but is not a directory"));
        }
    }

    // Try to create the directory
    fs::create_dir(path)
}

#[no_mangle]
#[no_mangle]
fn main() {
    match osys_create_dir("example_dir") {
        Ok(_) => println!("Directory created or already exists."),
        Err(e) => eprintln!("Failed to create directory: {}", e),
    }
}
