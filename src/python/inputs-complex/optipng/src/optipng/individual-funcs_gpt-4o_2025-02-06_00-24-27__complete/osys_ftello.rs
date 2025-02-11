#![allow(unaligned_references)]
use std::fs::File;
use std::io::{self, Seek, SeekFrom};

type OsysFoffsetT = i64;

#[no_mangle]
#[no_mangle]
fn osys_ftello(file: &mut File) -> io::Result<OsysFoffsetT> {
    // Use the seek method to get the current position
    file.seek(SeekFrom::Current(0)).map(|pos| pos as OsysFoffsetT)
}
