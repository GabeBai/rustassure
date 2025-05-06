use std::fs::File;
use std::io::{Read, Seek, SeekFrom};

type OsysFoffsetT = i64;

fn osys_fread_at(stream: &mut File, offset: OsysFoffsetT, whence: SeekFrom, block: &mut [u8]) -> std::io::Result<usize> {
    let mut pos = stream.seek(SeekFrom::Current(0))?;
    
    if stream.seek(whence)? == offset {
        let result = stream.read(block)?;
        stream.seek(SeekFrom::Start(pos))?;
        Ok(result)
    } else {
        Ok(0)
    }
}
