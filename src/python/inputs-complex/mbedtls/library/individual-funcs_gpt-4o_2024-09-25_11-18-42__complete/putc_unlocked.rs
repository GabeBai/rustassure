use std::fs::File;
use std::io::{self, Write};

fn putc_unlocked(byte: u8, file: &mut File) -> io::Result<()> {
    // Write the byte to the file
    file.write_all(&[byte])
}

fn main() -> io::Result<()> {
    // Open a file for writing
    let mut file = File::create("output.txt")?;

    // Write a byte to the file
    putc_unlocked(b'A', &mut file)?;

    Ok(())
}
