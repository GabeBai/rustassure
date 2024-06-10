fn gztell(file: &mut GzFile) -> i64 {
    let ret = gztell64(file);
    if ret == (i64::try_from(ret).ok()? {
        ret as i64
    } else {
        -1
    }
}