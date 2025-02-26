use png::{Decoder, Reader};
use std::fs::File;
use std::io::BufReader;

fn main() {
    let file = File::open("image.png").unwrap();
    let decoder = Decoder::new(BufReader::new(file));
    let (info, mut reader) = decoder.read_info().unwrap();

    let mut buf = vec![0; info.buffer_size()];
    reader.next_frame(&mut buf).unwrap();

    // Now you can work with the image data in `buf`
    println!("Image width: {}, height: {}", info.width, info.height);
}

use png::{Decoder, Reader};
use std::fs::File;
use std::io::{self, Read};

struct Process {
    in_file_size: usize,
    in_idat_size: usize,
    // Add other fields as necessary
}

fn opng_read_data<R: Read>(reader: &mut R, process: &mut Process, length: usize) -> io::Result<()> {
    let mut data = vec![0; length];
    reader.read_exact(&mut data)?;

    // Process the data as needed, similar to the C function
    // For example, check the length, update process fields, etc.

    Ok(())
}
