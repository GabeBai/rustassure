use std::os::raw::{c_void, c_long};
use std::fs::File;
use std::io::{Seek, SeekFrom, Read};

fn osys_fread_at(stream: &mut File, offset: c_long, whence: i32, block: &mut [u8]) -> usize {
    let mut result = 0;
    
    let pos = match stream.seek(SeekFrom::Current(0)) {
        Ok(pos) => pos,
        Err(_) => return 0,
    };
    
    if let Err(_) = stream.seek(SeekFrom::Start(offset as u64)) {
        return 0;
    }
    
    match stream.read_exact(block) {
        Ok(_) => result = block.len(),
        Err(_) => result = 0,
    }
    
    if let Err(_) = stream.seek(SeekFrom::Start(pos)) {
        result = 0;
    }
    
    result
}
