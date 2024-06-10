fn gzflush(file: *mut GZFile, flush: c_int) -> c_int {
    let mut state: &mut GZState = unsafe { file.as_mut() };

    if state.mode != GZ_WRITE || state.err != Z_OK {
        return Z_STREAM_ERROR;
    }

    if flush < 0 || flush > Z_FINISH {
        return Z_STREAM_ERROR;
    }

    if state.seek {
        state.seek = false;
        if gz_zero(state, state.skip) == -1 {
            return state.err;
        }
    }

    gz_comp(state, flush);

    state.err
}