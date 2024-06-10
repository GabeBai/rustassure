rust
fn inflateEnd(mut strm: *mut z_stream) -> c_int {
    let state = unsafe { (*strm).state };
    if state.is_null() {
        return Z_STREAM_ERROR;
    }
    let window = unsafe { (*state).window };
    if !window.is_null() {
        unsafe { zfree(strm, window as *mut c_void) };
    }
    unsafe { zfree(strm, state as *mut c_void) };
    unsafe { (*strm).state = ptr::null_mut() };
    trace!("inflate: end\n");
    Z_OK
}