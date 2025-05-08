use std::fs::File;
use std::io::{self, Read, Write};
use png; // Import the png crate

use std::fs::File;
use std::io::{self, Read, Write};
use png::{Encoder, Decoder};

fn opng_copy_file(infile: &str, outfile: &str) -> Result<(), Box<dyn std::error::Error>> {
    let mut input_file = File::open(infile)?;
    let mut output_file = File::create(outfile)?;

    // Create a PNG decoder
    let mut decoder = Decoder::new(&mut input_file);
    let (info, mut reader) = decoder.read_info()?;

    // Create a PNG encoder
    let mut encoder = Encoder::new(&mut output_file, info.width, info.height);
    encoder.set_color(info.color_type);
    encoder.set_depth(info.bit_depth);
    let mut writer = encoder.write_header()?;

    // Buffer for reading the image data
    let mut buf = vec![0; info.buffer_size()];
    reader.next_frame(&mut buf)?;

    // Write the image data to the output file
    writer.write_image_data(&buf)?;

    Ok(())
}

fn main() {
    if let Err(e) = opng_copy_file("input.png", "output.png") {
        eprintln!("Error: {}", e);
    }
}
