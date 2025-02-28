#![allow(unaligned_references)]
use std::fs::File;
use std::io::{self, Seek, SeekFrom};

type OsysFsizeT = u64;

#[no_mangle]
#[no_mangle]
pub fn osys_fgetsize(file: &mut File) -> io::Result<OsysFsizeT> {
    // Seek to the end of the file to get its size
    let size = file.seek(SeekFrom::End(0))?;
    Ok(size)
}

#[no_mangle]
#[no_mangle]
fn main() -> io::Result<()> {
    let mut file = File::open("example.txt")?;
    let size = osys_fgetsize(&mut file)?;
    println!("File size: {}", size);
    Ok(())
}
