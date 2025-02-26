pub fn osys_path_chext<'a>(
    buffer: &'a mut [u8],
    bufsize: usize,
    old_path: &'a str,
    new_extname: &'a str,
) -> Option<&'a [u8]> {
    let new_extname_bytes = new_extname.as_bytes();
    
    // Check if the new extension name starts with a dot
    if new_extname_bytes.is_empty() || new_extname_bytes[0] != b'.' {
        return None;
    }

    let old_path_bytes = old_path.as_bytes();
    let mut pos = None;

    // Copy old_path to buffer and find the position of the last dot
    for (i, &byte) in old_path_bytes.iter().enumerate() {
        if i >= bufsize {
            return None;
        }
        buffer[i] = byte;
        if byte == b'.' {
            pos = Some(i);
        }
    }

    // If we found a dot, we should truncate the path at that position
    let i = pos.unwrap_or(old_path_bytes.len());

    // Append the new extension to the buffer
    for (j, &byte) in new_extname_bytes.iter().enumerate() {
        if i + j >= bufsize {
            return None;
        }
        buffer[i + j] = byte;
        if byte == 0 {
            return Some(&buffer[..i + j]);
        }
    }

    // If we reach here, we return the buffer as a slice
    Some(&buffer[..i + new_extname_bytes.len()])
}
