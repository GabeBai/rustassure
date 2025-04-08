extern crate png;

use std::fs::File;
use std::io::BufReader;
use png::Decoder;

fn read_png_file(file_path: &str) {
    let file = File::open(file_path).expect("Failed to open file");
    let decoder = Decoder::new(BufReader::new(file));
    let (info, mut reader) = decoder.read_info().expect("Failed to read PNG info");

    let mut buf = vec![0; info.buffer_size()];
    reader.next_frame(&mut buf).expect("Failed to read PNG frame");

    println!("PNG width: {}, height: {}", info.width, info.height);
}

fn main() {
    read_png_file("path/to/your/image.png");
}
