use std::io::{self, Write, Seek, SeekFrom};

fn osys_fwrite_at<W: Write + Seek>(stream: &mut W, offset: u64, whence: i32, block: &[u8]) -> io::Result<usize> {
    // Save the current position
    let current_pos = stream.stream_position().unwrap_or(0);
    
    // Move the stream position based on the `whence` parameter
    let new_pos = match whence {
        0 => offset, // SEEK_SET
        1 => current_pos + offset, // SEEK_CUR
        2 => unimplemented!("SEEK_END not implemented"), // SEEK_END
        _ => return Err(io::Error::new(io::ErrorKind::InvalidInput, "Invalid whence value")),
    };
    
    // Seek to the new position
    stream.seek(SeekFrom::Start(new_pos))?;
    
    // Write the block to the stream
    let bytes_written = stream.write(block)?;
    
    // Flush the stream
    stream.flush()?;
    
    // Restore the original position
    stream.seek(SeekFrom::Start(current_pos))?;
    
    Ok(bytes_written)
}
