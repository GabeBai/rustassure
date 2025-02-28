#![allow(unaligned_references)]
use std::fs::File;
use std::io::{self, Read, Write};
use std::path::Path;
use png::{Encoder, HasParameters, ColorType, BitDepth};

#[no_mangle]
#[no_mangle]
fn opng_copy_file(infile_path: &Path, outfile_path: &Path) -> io::Result<()> {
    let mut infile = File::open(infile_path)?;
    let mut outfile = File::create(outfile_path)?;

    let mut buf = Vec::new();
    let buf_size_incr = 0x1000;
    let mut buf_size = 0;
    let mut chunk_hdr = [0u8; 8];
    let sig_iend = [0x49, 0x45, 0x4e, 0x44];

    // Initialize PNG encoder
    let mut encoder = Encoder::new(&mut outfile, 0, 0);
    encoder.set(ColorType::RGBA).set(BitDepth::Eight);
    let mut writer = encoder.write_header()?;

    loop {
        // Read the chunk header
        infile.read_exact(&mut chunk_hdr)?;

        // Calculate the length of the chunk
        let length = u32::from_be_bytes(chunk_hdr[0..4].try_into().unwrap()) as usize;

        if length > 0x7fffffff {
            if buf.is_empty() && length == 0x89504e47 {
                continue;
            }
            return Err(io::Error::new(io::ErrorKind::InvalidData, "Data error"));
        }

        if length + 4 > buf_size {
            buf_size = ((length + 4 + (buf_size_incr - 1)) / buf_size_incr) * buf_size_incr;
            buf.resize(buf_size, 0);
        }

        // Read the chunk data
        infile.read_exact(&mut buf[..length + 4])?;

        // Write the chunk
        writer.write_chunk(&chunk_hdr[4..8], &buf[..length])?;

        // Check for IEND chunk
        if &chunk_hdr[4..8] == sig_iend {
            break;
        }
    }

    Ok(())
}

#[no_mangle]
#[no_mangle]
fn main() -> io::Result<()> {
    let infile_path = Path::new("input.png");
    let outfile_path = Path::new("output.png");
    opng_copy_file(infile_path, outfile_path)
}
