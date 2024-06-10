fn gzeof(file: *mut GzFile) -> i32 {
    let state = file.as_mut().unwrap();

    if state.mode != GZ_READ && state.mode != GZ_WRITE {
        return 0;
    }

    if state.mode == GZ_READ {
        return state.past;
    } else {
        return 0;
    }
}