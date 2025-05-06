use std::fs::File;
use std::io::{Seek, SeekFrom};

type OsysFoffsetT = i64;

fn osys_fseeko(stream: &mut File, offset: OsysFoffsetT, whence: i32) -> std::io::Result<()> {
    stream.seek(SeekFrom::Start(offset as u64))?;
    Ok(())
}
