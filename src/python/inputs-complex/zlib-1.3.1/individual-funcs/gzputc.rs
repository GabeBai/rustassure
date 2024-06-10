fn gzputc(file: &mut GzFile, c: i32) -> Result<u8, String> {
    let mut have = 0;
    let buf = [0];
    let state = file.state();
    let strm = &state.strm;

    // check that we're writing and that there's no error
    if state.mode != GZ_WRITE || state.err != Z_OK {
        return Err("Error in gzputc".to_owned());
    }

    // check for seek request
    if state.seek == 1 {
        state.seek = 0;
        if gz_zero(state, state.skip) == -1 {
            return Err("Error in gzputc".to_owned());
        }
    }

    // try writing to input buffer for speed (state.size == 0 if buffer not initialized)
    if strm.avail_in == 0 && state.size != 0 {
        strm.next_in = state.in;
        have = strm.next_in.offset(strm.avail_in).unwrap() - state.in;
        if have < state.size {
            state.in[have] = c as u8;
            strm.avail_in += 1;
            return Ok(c & 0xff);
        }
    }

    // no room in buffer or not initialized, use gz_write()
    buf[0] = c as u8;
    if gz_write(state, buf.as_mut_ptr(), 1) != 1 {
        return Err("Error in gzputc".to_owned());
    }
    Ok(c & 0xff)
}