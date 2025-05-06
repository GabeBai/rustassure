use std::fs::File;
use std::io::{Seek, SeekFrom};

type OsysFoffsetT = i64;
type OsysFsizeT = u64;

fn osys_fgetsize(stream: &mut File, size: &mut OsysFsizeT) -> Result<(), std::io::Error> {
    if stream.seek(SeekFrom::End(0)).is_err() {
        return Err(std::io::Error::new(std::io::ErrorKind::Other, "Failed to seek to end"));
    }
    
    let offset = stream.seek(SeekFrom::Current(0))?;
    *size = offset as OsysFsizeT;
    
    Ok(())
}
