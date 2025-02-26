use std::fs::File;
use std::io::{self, Seek, SeekFrom};

type osys_foffset_t = i64; // Use i64 for signed offsets
type osys_fsize_t = u64; // Use u64 for file sizes

fn osys_fgetsize(file: &mut File) -> io::Result<osys_fsize_t> {
    // Seek to the end of the file
    file.seek(SeekFrom::End(0))?;
    
    // Get the current position (which is the size of the file)
    let offset = file.stream_position()?;
    
    // Return the size as u64
    Ok(offset)
}
