use std::io::Cursor;
use std::fmt::Write;

fn opng_snprintf_impl(buffer: &mut [u8], format: &str, args: std::fmt::Arguments) -> std::io::Result<usize> {
    let mut output = Cursor::new(buffer);
    let result = write!(&mut output, "{}", format, args)?;
    
    if result >= buffer.len() {
        if !buffer.is_empty() {
            buffer[buffer.len() - 1] = b'\0';
        }
        return Ok(-1);
    }
    
    Ok(result)
}
