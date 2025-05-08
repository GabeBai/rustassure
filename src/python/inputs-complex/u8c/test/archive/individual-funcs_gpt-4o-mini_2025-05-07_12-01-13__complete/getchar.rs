use std::io::{self, Read};

pub fn getchar() -> io::Result<i32> {
    let mut buffer = [0; 1];
    let stdin = io::stdin();
    let bytes_read = stdin.lock().read(&mut buffer)?;
    if bytes_read == 0 {
        return Ok(-1); // EOF
    }
    Ok(buffer[0] as i32)
}
