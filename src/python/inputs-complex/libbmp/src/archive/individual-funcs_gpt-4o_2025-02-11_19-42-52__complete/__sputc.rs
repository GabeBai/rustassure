#![allow(unaligned_references)]
use std::fs::File;
use std::io::{self, Write};

#[no_mangle]
#[no_mangle]
fn sputc(c: u8, file: &mut File) -> io::Result<()> {
    // Write a single byte to the file
    file.write_all(&[c])
}

#[no_mangle]
#[no_mangle]
fn main() -> io::Result<()> {
    let mut file = File::create("output.txt")?;
    
    // Example usage of sputc
    sputc(b'a', &mut file)?;
    sputc(b'\n', &mut file)?;
    
    Ok(())
}
