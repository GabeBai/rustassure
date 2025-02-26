use std::io::{self, Write};

fn sputc(c: u8, writer: &mut dyn Write) -> io::Result<usize> {
    // Attempt to write the byte to the writer
    writer.write(&[c])
}

fn main() -> io::Result<()> {
    let mut buffer = Vec::new();
    let c: u8 = b'A'; // Example character to write

    // Write the character to the buffer
    sputc(c, &mut buffer)?;

    // Print the buffer as a string
    println!("{}", String::from_utf8_lossy(&buffer));

    Ok(())
}
