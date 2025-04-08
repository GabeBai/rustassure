extern crate png;

use png::{Encoder, HasParameters};
use std::fs::File;
use std::io::BufWriter;

fn opng_write_file(outfile: &str, compression_level: u8, filter: png::FilterType) {
    let file = File::create(outfile).expect("Failed to create file");
    let ref mut w = BufWriter::new(file);

    let mut encoder = Encoder::new(w, 256, 256); // Width and height
    encoder.set(png::ColorType::RGBA).set(png::BitDepth::Eight);
    encoder.set_compression(png::Compression::Best);
    encoder.set_filter(filter);

    let mut writer = encoder.write_header().expect("Failed to write header");

    let data = vec![0u8; 256 * 256 * 4]; // Example data
    writer.write_image_data(&data).expect("Failed to write image data");
}

fn main() {
    opng_write_file("output.png", 9, png::FilterType::NoFilter);
}
