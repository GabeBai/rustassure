use std::fs::File;
use std::io::{self, Seek, SeekFrom};

type OsysFoffsetT = i64;

fn osys_ftello(stream: &mut File) -> io::Result<OsysFoffsetT> {
    stream.seek(SeekFrom::Current(0)).map(|pos| pos as i64)
}
