fn gzclose(mut file: *const libc::c_void) -> libc::c_int {
    let state = get_state_from_file(file as *mut gz_statep);

    if state.mode == GZ_READ {
        return gzclose_r(file);
    } else {
        return gzclose_w(file);
    }
}