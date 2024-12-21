use std::io::{self, Write};

fn putchar(c: char) -> io::Result<()> {
    let stdout = io::stdout();
    let mut handle = stdout.lock();
    handle.write_all(&[c as u8])?;
    handle.flush()?;
    Ok(())
}

fn main() {
    // Example usage
    if let Err(e) = putchar('A') {
        eprintln!("Error writing character: {}", e);
    }
}
