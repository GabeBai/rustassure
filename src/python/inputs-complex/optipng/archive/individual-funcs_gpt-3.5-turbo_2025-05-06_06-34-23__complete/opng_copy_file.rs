use std::fs::File;
use std::io::{Read, Write};
use std::ptr;
use std::mem;
use std::ffi::CString;
use png::{Encoder, ColorType, OutputInfo};

const SIG_IEND: [u8; 4] = [0x49, 0x45, 0x4e, 0x44];

fn opng_error(_: *mut png::Struct, msg: *const i8) {
    panic!("PNG error: {:?}", unsafe { std::ffi::CStr::from_ptr(msg) });
}

fn opng_warning(_: *mut png::Struct, msg: *const i8) {
    println!("PNG warning: {:?}", unsafe { std::ffi::CStr::from_ptr(msg) });
}

fn opng_write_data(png: *mut png::Struct, data: *mut u8, length: usize) {
    let file: &mut File = unsafe { &mut *(png_get_io_ptr(png) as *mut File) };
    file.write_all(unsafe { std::slice::from_raw_parts(data, length) }).unwrap();
}

fn opng_init_write_data() {
    // Any initialization needed for writing data
}

fn main() {
    let infile = File::open("input.png").expect("Failed to open input file");
    let outfile = File::create("output.png").expect("Failed to create output file");

    let mut encoder = Encoder::new(outfile, 100, 100); // Width and height are placeholders
    encoder.set_color(ColorType::RGB);
    let mut writer = encoder.write_header().expect("Failed to write PNG header");

    let mut chunk_hdr = [0u8; 8];
    let mut buf: Vec<u8> = Vec::new();
    let buf_size_incr: u32 = 0x1000;

    loop {
        if infile.read_exact(&mut chunk_hdr).is_err() {
            panic!("Read error");
        }

        let length = u32::from_be_bytes([chunk_hdr[0], chunk_hdr[1], chunk_hdr[2], chunk_hdr[3]]);
        if length == 0x89504e47 {
            continue;
        }

        if length + 4 > buf.len() as u32 {
            buf.clear();
            buf.resize(((length + 4) + (buf_size_incr - 1)) as usize / buf_size_incr as usize * buf_size_incr as usize, 0);
        }

        if infile.read_exact(&mut buf[..(length + 4) as usize]).is_err() {
            panic!("Read error");
        }

        writer.write_chunk(&chunk_hdr[4..], &buf[..length as usize]).expect("Failed to write PNG chunk");

        if &chunk_hdr[4..] == &SIG_IEND {
            break;
        }
    }

    writer.finish().expect("Failed to finish writing PNG");

    println!("PNG file copied successfully");
}
