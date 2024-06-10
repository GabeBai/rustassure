rust
fn adler32(mut adler: uLong, buf: &[u8]) -> uLong {
    adler = adler32_z(adler, buf.as_slice(), buf.len());
    return adler;
}