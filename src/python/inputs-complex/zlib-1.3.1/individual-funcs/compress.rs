rust
fn compress(dest: *mut u8, mut dest_len: u32, source: *const u8, source_len: u32) -> i32 {
    compress2(dest, &mut dest_len, source, source_len, Z_DEFAULT_COMPRESSION)
}