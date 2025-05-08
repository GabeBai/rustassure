use std::os::raw::c_char;

fn osys_path_chext<'a>(buffer: &'a mut [c_char], old_path: &'a str, new_extname: &'a str) -> Option<&'a [c_char]> {
    if new_extname.chars().next() != Some('.') {
        return None;
    }

    let mut i = 0;
    let mut pos = usize::MAX;

    for (idx, c) in old_path.chars().enumerate() {
        if i >= buffer.len() {
            return None;
        }

        buffer[i] = c as c_char;

        if c == '.' {
            pos = idx;
        }

        i += 1;
    }

    if i > pos {
        i = pos;
    }

    for c in new_extname.chars() {
        if i >= buffer.len() {
            return None;
        }

        buffer[i] = c as c_char;

        if c == '\0' {
            return Some(&buffer[..i]);
        }

        i += 1;
    }

    None
}
