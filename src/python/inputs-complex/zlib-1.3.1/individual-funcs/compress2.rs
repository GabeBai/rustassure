use zlib::{Deflate, DeflateOptions};

fn compress2(dest: &mut [u8], dest_len: &mut usize, source: &[u8], source_len: usize, level: i32) -> i32 {
    let mut stream = Deflate::new(level).unwrap();
    let mut left = *dest_len;
    *dest_len = 0;

    loop {
        if left == 0 {
            left = source_len.min(usize::max_value() as usize);
        }

        let result = stream.deflate(source, left, Z_NO_FLUSH);
        if result != Z_OK {
            break result;
        }

        *dest_len += result.total_out();
        source_len -= result.avail_in() as usize;
    }
}