use std::fs::File;
use std::io::{self, Write};

fn fputc_unlocked(c: u8, stream: &mut File) -> io::Result<()> {
    // Write the byte to the file
    stream.write_all(&[c])
}

fn main() -> io::Result<()> {
    // Example usage
    let mut file = File::create("output.txt")?;
    fputc_unlocked(b'A', &mut file)?;
    Ok(())
}
