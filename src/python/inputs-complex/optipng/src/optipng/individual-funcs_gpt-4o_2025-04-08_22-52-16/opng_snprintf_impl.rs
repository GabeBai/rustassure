use std::fmt::{self, Write};

fn opng_snprintf_impl(buffer: &mut String, buffer_size: usize, format: &str, args: fmt::Arguments) -> Result<usize, fmt::Error> {
    // Ensure the buffer is cleared and has the correct capacity
    buffer.clear();
    buffer.reserve(buffer_size);

    // Use the write! macro to format the string into the buffer
    match write!(buffer, "{}", args) {
        Ok(_) => {
            if buffer.len() >= buffer_size {
                // Truncate the buffer if it exceeds the buffer size
                buffer.truncate(buffer_size - 1);
                buffer.push('\0');
                Err(fmt::Error)
            } else {
                Ok(buffer.len())
            }
        }
        Err(e) => Err(e),
    }
}

fn main() {
    let mut buffer = String::new();
    let buffer_size = 100;
    let format = "Hello, {}!";
    let args = format_args!("world");

    match opng_snprintf_impl(&mut buffer, buffer_size, format, args) {
        Ok(size) => println!("Formatted string: {} (size: {})", buffer, size),
        Err(_) => println!("Formatting error"),
    }
}
