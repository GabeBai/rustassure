use std::fs::File;
use std::io::{self, Seek, SeekFrom};

fn osys_fgetsize(stream: &mut File, size: &mut u64) -> io::Result<()> {
    stream.seek(SeekFrom::End(0))?;
    let offset = stream.stream_position()?;
    *size = offset;
    Ok(())
}
