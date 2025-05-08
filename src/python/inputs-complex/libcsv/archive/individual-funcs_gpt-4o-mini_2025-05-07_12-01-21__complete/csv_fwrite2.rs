use std::io::{self, Write};

fn csv_fwrite2<W: Write>(writer: &mut W, src: &[u8], quote: u8) -> io::Result<()> {
    if writer.is_null() || src.is_empty() {
        return Ok(()); // Return early if writer is null or src is empty
    }

    writer.write_all(&[quote])?; // Write the opening quote

    for &byte in src {
        if byte == quote {
            writer.write_all(&[quote])?; // Write an additional quote if the byte is the quote character
        }
        writer.write_all(&[byte])?; // Write the actual byte
    }

    writer.write_all(&[quote])?; // Write the closing quote
    Ok(())
}

fn main() -> io::Result<()> {
    let mut buffer = Vec::new();
    let data = b"Hello, \"world\"!";
    let quote = b'"';

    csv_fwrite2(&mut buffer, data, quote[0])?;
    println!("{}", String::from_utf8_lossy(&buffer));

    Ok(())
}
