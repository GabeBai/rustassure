pub fn osys_path_chext<'a>(
    buffer: &'a mut [u8],
    bufsize: usize,
    old_path: &'a [u8],
    new_extname: &'a [u8],
) -> Option<&'a [u8]> {
    let mut i: usize = 0;
    let mut pos: usize = usize::MAX; // Use usize::MAX to represent "not found"

    if new_extname.is_empty() || new_extname[0] != b'.' {
        return None;
    }

    // Copy old_path to buffer and find the last '.' position
    while i < old_path.len() {
        if i >= bufsize {
            return None;
        }
        buffer[i] = old_path[i];
        if buffer[i] == b'.' {
            pos = i;
        }
        i += 1;
    }

    // If we found a '.', truncate at that position
    if i > pos {
        i = pos;
    }

    // Append new_extname to buffer
    for &byte in new_extname {
        if i >= bufsize {
            return None;
        }
        buffer[i] = byte;
        if byte == 0 {
            return Some(&buffer[..i]);
        }
        i += 1;
    }

    Some(&buffer[..i])
}
