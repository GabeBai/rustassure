#![allow(unaligned_references)]
use std::fs::File;
use std::io::{self, Write};

#[no_mangle]
#[no_mangle]
fn sputc(c: u8, file: &mut File) -> io::Result<()> {
    // Attempt to write the character to the file
    file.write_all(&[c])?;
    Ok(())
}

#[no_mangle]
#[no_mangle]
fn main() -> io::Result<()> {
    // Open a file for writing
    let mut file = File::create("output.txt")?;

    // Write a character to the file
    sputc(b'a', &mut file)?;

    Ok(())
}
