use std::os::raw::{c_char, c_ulong};
use std::ffi::CString;

fn osys_path_chext(buffer: &mut [c_char], bufsize: c_ulong, old_path: &str, new_extname: &str) -> Option<&[c_char]> {
    let old_path_bytes = old_path.as_bytes();
    let new_extname_bytes = new_extname.as_bytes();

    let mut i = 0;
    let mut pos = usize::MAX;

    if new_extname_bytes.get(0) != Some(&b'.') {
        return None;
    }

    for (idx, &byte) in old_path_bytes.iter().enumerate() {
        if i >= bufsize as usize {
            return None;
        }

        if byte == b'.' {
            pos = idx;
        }

        buffer[i] = byte as c_char;
        i += 1;
    }

    if i > pos {
        i = pos;
    }

    for &byte in new_extname_bytes {
        if i >= bufsize as usize {
            return None;
        }

        buffer[i] = byte as c_char;

        if byte == 0 {
            return Some(&buffer[..i]);
        }

        i += 1;
    }

    None
}

fn main() {
    let bufsize: c_ulong = 256;
    let mut buffer: [c_char; 256] = [0; 256];
    let old_path = "example.txt";
    let new_extname = ".new";

    if let Some(result) = osys_path_chext(&mut buffer, bufsize, old_path, new_extname) {
        let result_str = unsafe { CString::from_raw(result.as_ptr()) };
        println!("Result: {:?}", result_str.to_str().unwrap());
    } else {
        println!("Error occurred during path modification.");
    }
}
