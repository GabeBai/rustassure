rust
fn gzputs(file: *mut GZFile, s: *const c_char) -> i32 {
    let state = unsafe { (*file).state };
    if state.mode != GZ_WRITE || state.err != Z_OK {
        return -1;
    }
    let len = unsafe { strlen(s) };
    if len < 0 || len as u32 != len {
        gz_error(state, Z_STREAM_ERROR, "string length does not fit in int");
        return -1;
    }
    let put = gz_write(state, s, len);
    if put < len {
        return -1;
    }
    return len as i32;
}