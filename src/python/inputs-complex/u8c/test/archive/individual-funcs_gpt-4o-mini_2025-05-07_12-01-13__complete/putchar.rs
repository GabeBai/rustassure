use std::io::{self, Write};

#[inline]
pub fn putchar(c: i32) -> io::Result<()> {
    let _ = io::stdout().write_all(&[c as u8])?;
    Ok(())
}
