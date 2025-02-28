use std::fs;
use std::io;

fn osys_rename(src_path: &str, dest_path: &str, clobber: bool) -> Result<(), io::Error> {
    if !clobber {
        if fs::metadata(dest_path).is_ok() {
            return Err(io::Error::new(io::ErrorKind::AlreadyExists, "Destination file already exists"));
        }
    }
    
    fs::rename(src_path, dest_path)?;
    
    Ok(())
}

fn main() {
    let src_path = "source.txt";
    let dest_path = "destination.txt";
    
    match osys_rename(src_path, dest_path, false) {
        Ok(_) => println!("File renamed successfully"),
        Err(e) => eprintln!("Error renaming file: {}", e),
    }
}
