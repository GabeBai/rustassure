rust
fn gzprintf(gzFile file: &mut GzFile, const char *format: &str) -> i32 {
    let mut va_list = VaList::new();
    let mut ret: i32;

    va_start(va_list, format);
    ret = gzvprintf(file, format, va_list);
    va_end(va_list);
    return ret;
}