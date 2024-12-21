use std::io::{self, Write};

#[inline]
pub fn putchar_unlocked(c: char) -> io::Result<()> {
    let stdout = io::stdout();
    let mut handle = stdout.lock();
    handle.write_all(&[c as u8])?;
    handle.flush()
}
