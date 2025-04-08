use png::Decoder;
use std::fs::File;
use std::io::BufReader;

fn read_png_file(file_path: &str) -> Result<(), Box<dyn std::error::Error>> {
    let file = File::open(file_path)?;
    let decoder = Decoder::new(BufReader::new(file));
    let (info, mut reader) = decoder.read_info()?;

    let mut buf = vec![0; info.buffer_size()];
    reader.next_frame(&mut buf)?;

    println!("PNG width: {}, height: {}", info.width, info.height);
    Ok(())
}

fn main() {
    if let Err(e) = read_png_file("path/to/your/image.png") {
        eprintln!("Error reading PNG file: {}", e);
    }
}
