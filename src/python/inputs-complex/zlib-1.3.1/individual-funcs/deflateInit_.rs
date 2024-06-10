rust
fn deflateInit(strm: &mut ZStream, level: i32, version: &str, stream_size: usize) -> c_int {
    return deflateInit2(strm, level, Z_DEFLATED, MAX_WBITS, DEF_MEM_LEVEL, Z_DEFAULT_STRATEGY, version, stream_size);
}