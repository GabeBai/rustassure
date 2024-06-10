fn gzerror(file: &gzFile, errnum: &mut i32) -> Option<&str> {
    let mut state = unsafe { &*(file as *const _ as *mut _) };
    if state.mode != GZ_READ && state.mode != GZ_WRITE {
        return None;
    }
    if errnum != null {
        *errnum = state.err;
    }
    Some(state.msg)
}