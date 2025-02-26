use std::io::{self, Write};

pub struct MyFile {
    writer: Box<dyn Write>,
    buffer: Vec<u8>,
    // Add other fields as necessary to mimic the C structure
}

impl MyFile {
    pub fn new(writer: Box<dyn Write>, buffer_size: usize) -> Self {
        MyFile {
            writer,
            buffer: vec![0; buffer_size],
        }
    }

    pub fn sputc(&mut self, c: u8) -> io::Result<usize> {
        if self.buffer.len() > 0 {
            self.buffer.push(c);
            Ok(1)
        } else {
            self.flush()?;
            self.buffer.push(c);
            Ok(1)
        }
    }

    pub fn flush(&mut self) -> io::Result<()> {
        self.writer.write_all(&self.buffer)?;
        self.buffer.clear();
        Ok(())
    }
}

// Example usage
fn main() -> io::Result<()> {
    let file = std::fs::File::create("output.txt")?;
    let mut my_file = MyFile::new(Box::new(file), 1024);

    my_file.sputc(b'H')?;
    my_file.sputc(b'e')?;
    my_file.sputc(b'l')?;
    my_file.sputc(b'l')?;
    my_file.sputc(b'o')?;
    my_file.flush()?;

    Ok(())
}
