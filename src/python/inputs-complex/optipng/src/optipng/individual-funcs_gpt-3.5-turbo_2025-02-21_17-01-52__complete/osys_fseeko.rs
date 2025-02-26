use std::fs::File;
use std::io::{self, Seek, SeekFrom};

fn osys_fseeko(stream: &mut File, offset: i64, whence: i32) -> io::Result<()> {
    stream.seek(SeekFrom::Start(offset as u64))?;
    Ok(())
}
