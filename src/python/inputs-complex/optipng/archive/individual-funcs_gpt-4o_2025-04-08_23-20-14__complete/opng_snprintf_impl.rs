use std::fmt;
use std::io::{self, Write};

fn opng_snprintf_impl(buffer: &mut [u8], format: fmt::Arguments) -> io::Result<usize> {
    let mut cursor = io::Cursor::new(buffer);
    match write!(cursor, "{}", format) {
        Ok(_) => {
            let written = cursor.position() as usize;
            if written < buffer.len() {
                buffer[written] = 0; // Null-terminate the string
                Ok(written)
            } else {
                Err(io::Error::new(io::ErrorKind::Other, "Buffer overflow"))
            }
        }
        Err(e) => Err(e),
    }
}

fn main() {
    let mut buffer = [0u8; 100];
    let format_args = format_args!("Hello, {}!", "world");
    match opng_snprintf_impl(&mut buffer, format_args) {
        Ok(size) => println!("Formatted string: {}", String::from_utf8_lossy(&buffer[..size])),
        Err(e) => eprintln!("Error: {}", e),
    }
}
