use std::ffi::VaList;
use std::fmt;
use std::ptr;

fn opng_snprintf_impl(buffer: &mut [u8], format: &str, args: fmt::Arguments) -> Result<usize, ()> {
    let mut writer = BufferWriter::new(buffer);
    match fmt::write(&mut writer, args) {
        Ok(_) => {
            let written = writer.written();
            if written >= buffer.len() {
                if !buffer.is_empty() {
                    buffer[buffer.len() - 1] = 0; // Null-terminate
                }
                Err(())
            } else {
                Ok(written)
            }
        }
        Err(_) => Err(()),
    }
}

struct BufferWriter<'a> {
    buffer: &'a mut [u8],
    pos: usize,
}

impl<'a> BufferWriter<'a> {
    fn new(buffer: &'a mut [u8]) -> Self {
        BufferWriter { buffer, pos: 0 }
    }

    fn written(&self) -> usize {
        self.pos
    }
}

impl<'a> fmt::Write for BufferWriter<'a> {
    fn write_str(&mut self, s: &str) -> fmt::Result {
        let bytes = s.as_bytes();
        let len = bytes.len().min(self.buffer.len().saturating_sub(self.pos));
        if len > 0 {
            self.buffer[self.pos..self.pos + len].copy_from_slice(&bytes[..len]);
            self.pos += len;
        }
        Ok(())
    }
}

fn main() {
    let mut buffer = [0u8; 100];
    let format = "Hello, {}!";
    let name = "World";

    let args = format_args!(format, name);
    match opng_snprintf_impl(&mut buffer, format, args) {
        Ok(size) => println!("Formatted string: {}", std::str::from_utf8(&buffer[..size]).unwrap()),
        Err(_) => println!("Formatting failed"),
    }
}
