use std::io::{self, Write};

fn csv_fwrite2(fp: &mut dyn Write, src: &[u8], quote: u8) -> io::Result<()> {
    if src.is_empty() {
        return Ok(());
    }

    if fp.write(&[quote])? == 0 {
        return Err(io::Error::new(io::ErrorKind::Other, "Failed to write quote"));
    }

    for &byte in src {
        if byte == quote {
            if fp.write(&[quote])? == 0 {
                return Err(io::Error::new(io::ErrorKind::Other, "Failed to write quote"));
            }
        }
        if fp.write(&[byte])? == 0 {
            return Err(io::Error::new(io::ErrorKind::Other, "Failed to write byte"));
        }
    }

    if fp.write(&[quote])? == 0 {
        return Err(io::Error::new(io::ErrorKind::Other, "Failed to write quote"));
    }

    Ok(())
}
