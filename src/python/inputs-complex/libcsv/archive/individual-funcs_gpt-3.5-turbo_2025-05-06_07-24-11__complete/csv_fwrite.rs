use std::fs::File;
use std::io::{self, Write};

fn csv_fwrite(fp: &mut File, src: &[u8]) -> io::Result<()> {
    fp.write_all(src)
}
