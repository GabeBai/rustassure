use std::fs::File;
use std::io::{self, Read};

fn is_eof(file: &mut File) -> io::Result<bool> {
    let mut buffer = [0; 1];
    match file.read(&mut buffer) {
        Ok(0) => Ok(true),  // EOF reached
        Ok(_) => Ok(false), // Not EOF
        Err(e) => Err(e),   // An error occurred
    }
}

fn main() -> io::Result<()> {
    let mut file = File::open("example.txt")?;
    if is_eof(&mut file)? {
        println!("End of file reached");
    } else {
        println!("Not end of file");
    }
    Ok(())
}
