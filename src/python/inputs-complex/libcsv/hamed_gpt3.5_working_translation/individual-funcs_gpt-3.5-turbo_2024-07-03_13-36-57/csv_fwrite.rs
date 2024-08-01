use std::fs::File;
use std::io::{self, Write};

const CSV_ERRORS: [&str; 5] = ["success",
                                "error parsing data while strict checking enabled",
                                "memory exhausted while increasing buffer size",
                                "data size too large",
                                "invalid status code"];

fn csv_fwrite(fp: &mut File, src: &[u8]) -> io::Result<usize> {
    csv_fwrite2(fp, src, 0x22)
}

fn csv_fwrite2(fp: &mut File, src: &[u8], quote: u8) -> io::Result<usize> {
    fp.write_all(src)?;
    Ok(src.len())
}
