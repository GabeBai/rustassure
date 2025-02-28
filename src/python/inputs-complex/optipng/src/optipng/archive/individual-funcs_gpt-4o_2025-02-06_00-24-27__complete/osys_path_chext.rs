#![allow(unaligned_references)]
#[no_mangle]
#[no_mangle]
pub fn osys_path_chext<'a>(
    buffer: &'a mut [u8],
    old_path: &str,
    new_extname: &str,
) -> Option<&'a mut [u8]> {
    if !new_extname.starts_with('.') {
        return None;
    }

    let mut pos: Option<usize> = None;
    let old_path_bytes = old_path.as_bytes();
    let new_extname_bytes = new_extname.as_bytes();

    for (i, &byte) in old_path_bytes.iter().enumerate() {
        if i >= buffer.len() {
            return None;
        }
        buffer[i] = byte;
        if byte == b'.' {
            pos = Some(i);
        }
    }

    let mut i = match pos {
        Some(p) => p,
        None => old_path_bytes.len(),
    };

    for &byte in new_extname_bytes {
        if i >= buffer.len() {
            return None;
        }
        buffer[i] = byte;
        i += 1;
    }

    if i < buffer.len() {
        buffer[i] = 0; // Null-terminate the string
    }

    Some(&mut buffer[..i])
}
