use std::os::raw::{c_char, c_ulong};

fn osys_path_chext(buffer: &mut [c_char], bufsize: c_ulong, old_path: *const c_char, mut new_extname: *const c_char) -> *mut c_char {
    let mut i: c_ulong = 0;
    let mut pos: c_ulong = !0;

    unsafe {
        if (*new_extname as u8) != b'.' {
            return std::ptr::null_mut();
        }

        while *old_path.offset(i as isize) != 0 {
            if i >= bufsize {
                return std::ptr::null_mut();
            }

            if let Some(val) = buffer.get_mut(i as usize) {
                *val = *old_path.offset(i as isize);
                if *val == b'.' as c_char {
                    pos = i;
                }
            }

            i += 1;
        }

        if i > pos {
            i = pos;
        }

        loop {
            if i >= bufsize {
                return std::ptr::null_mut();
            }

            if let Some(val) = buffer.get_mut(i as usize) {
                *val = *new_extname;
                if *val == 0 {
                    return buffer.as_mut_ptr();
                }
            }

            i += 1;
            new_extname = new_extname.offset(1);
        }
    }
}

fn main() {
    // Example usage
    let mut buffer: [c_char; 100] = [0; 100];
    let old_path = b"example.txt\0".as_ptr() as *const c_char;
    let new_extname = b".new\0".as_ptr() as *const c_char;
    let bufsize: c_ulong = 100;

    let result = osys_path_chext(&mut buffer, bufsize, old_path, new_extname);
    if !result.is_null() {
        let result_str = unsafe { std::ffi::CStr::from_ptr(result) };
        println!("Result: {:?}", result_str.to_str().unwrap());
    } else {
        println!("Error occurred during path extension.");
    }
}
