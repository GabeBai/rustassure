use std::fs::File;
use std::io::{self, Seek, SeekFrom};

fn osys_fgetsize(file: &mut File) -> io::Result<u64> {
    // Seek to the end of the file
    let offset = file.seek(SeekFrom::End(0))?;
    Ok(offset)
}

fn main() -> io::Result<()> {
    let mut file = File::open("example.txt")?;
    let size = osys_fgetsize(&mut file)?;
    println!("File size: {}", size);
    Ok(())
}
