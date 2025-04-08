use std::io::{self, Seek, SeekFrom, Write};
use std::fs::File;

fn osys_fwrite_at(
    stream: &mut File,
    offset: i64,
    whence: SeekFrom,
    block: &[u8],
) -> io::Result<usize> {
    let current_pos = stream.stream_position()?;
    stream.flush()?;
    stream.seek(whence)?;
    let result = stream.write(block)?;
    stream.flush()?;
    stream.seek(SeekFrom::Start(current_pos))?;
    Ok(result)
}
