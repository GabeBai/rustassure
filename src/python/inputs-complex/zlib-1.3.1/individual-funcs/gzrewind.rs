use std::io;
use std::fs::File;

fn gzrewind(file: &File) -> io::Result<()> {
    let state = file.state();

    // Check that we're reading and that there's no error
    if state.mode != GZ_READ || (state.err != Z_OK && state.err != Z_BUF_ERROR) {
        return Err(io::Error::new(io::ErrorKind::Other, "Invalid mode or error"));
    }

    // Back up and start over
    if io::SeekFrom::Start(state.start).seek(file)? == -1 {
        return Err(io::Error::new(io::ErrorKind::Other, "Seek failed"));
    }

    gz_reset(state);
    Ok(())
}