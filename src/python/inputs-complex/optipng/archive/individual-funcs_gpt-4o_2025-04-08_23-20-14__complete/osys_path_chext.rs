fn osys_path_chext<'a>(
    buffer: &'a mut [u8],
    old_path: &str,
    new_extname: &str,
) -> Option<&'a mut [u8]> {
    if !new_extname.starts_with('.') {
        return None;
    }

    let mut pos = None;
    let mut i = 0;

    for (index, &byte) in old_path.as_bytes().iter().enumerate() {
        if index >= buffer.len() {
            return None;
        }
        buffer[index] = byte;
        if byte == b'.' {
            pos = Some(index);
        }
        i = index + 1;
    }

    if let Some(pos) = pos {
        i = pos;
    }

    for &byte in new_extname.as_bytes() {
        if i >= buffer.len() {
            return None;
        }
        buffer[i] = byte;
        i += 1;
    }

    if i < buffer.len() {
        buffer[i] = 0; // Null-terminate the buffer
    }

    Some(&mut buffer[..i])
}

fn main() {
    let mut buffer = [0u8; 256];
    let old_path = "example.txt";
    let new_extname = ".md";

    if let Some(new_path) = osys_path_chext(&mut buffer, old_path, new_extname) {
        println!("New path: {}", std::str::from_utf8(new_path).unwrap());
    } else {
        println!("Failed to change extension.");
    }
}
