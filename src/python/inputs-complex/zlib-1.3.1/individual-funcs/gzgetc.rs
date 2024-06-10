rust
use std::io;

fn gzgetc(file: &mut File) -> io::Result<u8> {
    let state = file.state();

    if state.mode != GZ_READ || (state.err != Z_OK && state.err != Z_BUF_ERROR) {
        return Err(io::ErrorKind::InvalidInput);
    }

    if state.x.have > 0 {
        state.x.have -= 1;
        state.x.pos += 1;
        return Ok(*state.x.next);
    }

    gz_read(state, &mut [0u8], 1)?;
    Ok(0)
}