use std::fs::File;
use std::io::{self, Read};

fn ferror_unlocked(file: &File) -> io::Result<bool> {
    // Attempt to read from the file to check for errors
    let mut buffer = [0; 1];
    match file.take(1).read(&mut buffer) {
        Ok(_) => Ok(false), // No error
        Err(e) => {
            if e.kind() == io::ErrorKind::Interrupted {
                Ok(false) // Interrupted is not considered an error
            } else {
                Ok(true) // Any other error
            }
        }
    }
}

fn main() -> io::Result<()> {
    let file = File::open("example.txt")?;
    let has_error = ferror_unlocked(&file)?;
    println!("File has error: {}", has_error);
    Ok(())
}
