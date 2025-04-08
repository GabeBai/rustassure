use std::fs::File;
use std::io::{self, Read, Write};
use std::path::Path;
use std::error::Error;

fn opng_copy_file(infile_path: &Path, outfile_path: &Path) -> Result<(), Box<dyn Error>> {
    let mut infile = File::open(infile_path)?;
    let mut outfile = File::create(outfile_path)?;

    let mut buf = Vec::new();
    let buf_size_incr = 0x1000;
    let mut buf_size = 0;
    let mut chunk_hdr = [0u8; 8];

    // Write PNG signature
    outfile.write_all(&[0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A])?;

    loop {
        infile.read_exact(&mut chunk_hdr)?;

        let length = u32::from_be_bytes([chunk_hdr[0], chunk_hdr[1], chunk_hdr[2], chunk_hdr[3]]) as usize;

        if length > 0x7fffffff {
            if buf.is_empty() && length == 0x89504e47 {
                continue;
            }
            return Err("Data error".into());
        }

        if length + 4 > buf_size {
            buf_size = ((length + 4 + buf_size_incr - 1) / buf_size_incr) * buf_size_incr;
            buf.resize(buf_size, 0);
        }

        infile.read_exact(&mut buf[..length + 4])?;
        outfile.write_all(&chunk_hdr[4..])?;
        outfile.write_all(&buf[..length])?;

        if &chunk_hdr[4..8] == b"IEND" {
            break;
        }
    }

    Ok(())
}

fn main() -> Result<(), Box<dyn Error>> {
    let infile_path = Path::new("input.png");
    let outfile_path = Path::new("output.png");

    opng_copy_file(infile_path, outfile_path)?;

    Ok(())
}
