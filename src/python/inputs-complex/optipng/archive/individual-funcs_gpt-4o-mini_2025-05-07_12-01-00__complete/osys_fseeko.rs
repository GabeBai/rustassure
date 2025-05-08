use std::fs::File;
use std::io::{Seek, SeekFrom, Result};

pub type OsysFoffsetT = i64; // Assuming osys_foffset_t is a 64-bit integer

pub fn osys_fseeko(file: &mut File, offset: OsysFoffsetT, whence: i32) -> Result<u64> {
    let seek_from = match whence {
        0 => SeekFrom::Start(offset as u64), // SEEK_SET
        1 => SeekFrom::Current(offset),        // SEEK_CUR
        2 => SeekFrom::End(offset),            // SEEK_END
        _ => return Err(std::io::Error::new(std::io::ErrorKind::InvalidInput, "Invalid whence")),
    };

    file.seek(seek_from).map(|pos| pos as u64) // Return the new position as u64
}
