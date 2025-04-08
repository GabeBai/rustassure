use png::{BitDepth, ColorType, Encoder};
use std::fs::File;
use std::io::BufWriter;
use std::path::Path;

fn opng_write_file(
    outfile_path: &Path,
    compression_level: u8,
    memory_level: u8,
    compression_strategy: u8,
    filter: u8,
) -> Result<(), Box<dyn std::error::Error>> {
    if !(1..=9).contains(&compression_level)
        || !(1..=9).contains(&memory_level)
        || !(0..=3).contains(&compression_strategy)
        || !(0..=5).contains(&filter)
    {
        return Err("Invalid encoding parameters".into());
    }

    let file = File::create(outfile_path)?;
    let w = BufWriter::new(file);

    let mut encoder = Encoder::new(w, 800, 600); // Example dimensions
    encoder.set_color(ColorType::Rgba);
    encoder.set_depth(BitDepth::Eight);
    encoder.set_compression(compression_level.into());
    encoder.set_filter(filter.into());

    let mut writer = encoder.write_header()?;

    // Example image data, replace with actual data
    let data = vec![0u8; 800 * 600 * 4]; // RGBA for 800x600 image
    writer.write_image_data(&data)?;

    Ok(())
}

fn main() {
    let path = Path::new("output.png");
    if let Err(e) = opng_write_file(path, 9, 8, 0, 0) {
        eprintln!("Error writing PNG file: {}", e);
    }
}
