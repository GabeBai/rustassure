rust
fn inflateInit(strm: &mut z_streamp, version: &str) -> i32 {
    return inflateInit2(strm, DEF_WBITS, version);
}