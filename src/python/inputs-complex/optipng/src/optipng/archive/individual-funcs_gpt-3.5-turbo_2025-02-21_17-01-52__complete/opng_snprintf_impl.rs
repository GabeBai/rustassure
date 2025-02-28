use std::ffi::CString;
use std::os::raw::{c_char, c_int};
use std::ptr;

fn opng_snprintf_impl(buffer: &mut [u8], format: &str, args: std::fmt::Arguments) -> Result<usize, c_int> {
    let format_cstring = CString::new(format).expect("Failed to convert format to CString");

    let result = {
        let mut cursor = std::io::Cursor::new(buffer);
        let res = cursor.write_fmt(format_cstring.as_bytes_with_nul(), args);
        match res {
            Ok(_) => cursor.position() as usize,
            Err(_) => return Err(-1),
        }
    };

    if result >= buffer.len() {
        buffer[buffer.len() - 1] = b'\0';
        return Err(-1);
    }

    Ok(result)
}
