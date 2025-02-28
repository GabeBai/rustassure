#![allow(unaligned_references)]
use std::fmt;
use std::io::{self, Write};

#[no_mangle]
#[no_mangle]
fn opng_snprintf_impl(buffer: &mut [u8], format: &str, args: fmt::Arguments) -> Result<usize, io::Error> {
    let mut cursor = io::Cursor::new(buffer);
    let written = cursor.write_fmt(format_args!("{}", args))?;

    if written >= buffer.len() {
        if !buffer.is_empty() {
            buffer[buffer.len() - 1] = 0; // Null-terminate the buffer
        }
        return Err(io::Error::new(io::ErrorKind::Other, "Buffer overflow"));
    }

    Ok(written)
}

#[no_mangle]
#[no_mangle]
fn main() {
    let mut buffer = [0u8; 128];
    let format = "Hello, {}!";
    let args = format_args!("world");

    match opng_snprintf_impl(&mut buffer, format, args) {
        Ok(size) => println!("Formatted string size: {}", size),
        Err(e) => eprintln!("Error: {}", e),
    }
}
