use std::fs::File;
use std::io::{Error, Result, Seek, SeekFrom};

type OsysFoffsetT = i64;
type OsysFsizeT = u64;

fn osys_ftello(stream: &mut File) -> Result<OsysFoffsetT> {
    stream.seek(SeekFrom::Current(0)).map_err(|e| e.into())
}

fn osys_fseeko(stream: &mut File, offset: OsysFoffsetT, whence: i32) -> Result<()> {
    stream.seek(SeekFrom::Start(offset as u64)).map_err(|e| e.into())
}

fn osys_fgetsize(stream: &mut File, size: &mut OsysFsizeT) -> Result<()> {
    if let Err(_) = osys_fseeko(stream, 0, 2) {
        return Err(Error::from_raw_os_error(-1));
    }
    let offset = osys_ftello(stream)?;
    if offset < 0 {
        return Err(Error::from_raw_os_error(-1));
    }
    *size = offset as OsysFsizeT;
    Ok(())
}
