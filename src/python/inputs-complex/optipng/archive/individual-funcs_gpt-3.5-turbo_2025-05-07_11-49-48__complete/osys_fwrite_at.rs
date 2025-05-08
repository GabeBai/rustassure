use std::fs::File;
use std::io::{Seek, SeekFrom, Write};

fn osys_fwrite_at(stream: &mut File, offset: i64, whence: SeekFrom, block: &[u8]) -> std::io::Result<usize> {
    let pos = stream.seek(SeekFrom::Current(0))?;
    
    if stream.flush().is_err() {
        return Ok(0);
    }
    
    if stream.seek(whence).is_ok() {
        let result = stream.write(block)?;
        
        if stream.flush().is_err() {
            return Ok(0);
        }
        
        if stream.seek(SeekFrom::Start(pos)).is_err() {
            return Ok(0);
        }
        
        Ok(result)
    } else {
        Ok(0)
    }
}
