use std::io::{self, Seek, SeekFrom, Read};
use std::fs::File;

pub type osys_foffset_t = i64;
pub type osys_fsize_t = u64;

pub fn osys_fgetsize(stream: &mut File) -> io::Result<osys_fsize_t> {
    stream.seek(SeekFrom::End(0))?;
    let offset = stream.stream_position()?;
    Ok(offset as osys_fsize_t)
}
