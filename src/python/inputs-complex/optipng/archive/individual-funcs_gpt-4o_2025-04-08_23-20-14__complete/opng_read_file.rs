use png::{Decoder, DecodingError};
use std::fs::File;
use std::io::{self, BufReader};

fn opng_read_file(infile: &str) -> Result<(), Box<dyn std::error::Error>> {
    let file = File::open(infile)?;
    let decoder = Decoder::new(BufReader::new(file));
    let (info, mut reader) = decoder.read_info()?;

    // Allocate the output buffer.
    let mut buf = vec![0; info.buffer_size()];
    // Read the next frame. An APNG might contain multiple frames.
    reader.next_frame(&mut buf)?;

    // Here you can process the image data in `buf` as needed.
    println!("Image width: {}", info.width);
    println!("Image height: {}", info.height);

    Ok(())
}

fn main() {
    if let Err(e) = opng_read_file("path/to/your/image.png") {
        eprintln!("Error reading PNG file: {}", e);
    }
}
