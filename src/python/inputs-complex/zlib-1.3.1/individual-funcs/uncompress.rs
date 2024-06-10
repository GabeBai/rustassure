fn uncompress(dest: &mut [u8], dest_len: &mut usize, source: &[u8], source_len: usize) -> i32 {
    return uncompress2(dest, dest_len, source, &source_len);
}