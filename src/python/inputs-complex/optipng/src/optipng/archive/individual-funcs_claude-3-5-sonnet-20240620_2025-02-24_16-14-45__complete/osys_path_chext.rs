use std::ffi::CStr;
use std::ptr;

pub fn osys_path_chext(buffer: *mut libc::c_char, bufsize: libc::size_t,
                       old_path: *const libc::c_char, new_extname: *const libc::c_char) -> *mut libc::c_char {
    let new_extname = unsafe { CStr::from_ptr(new_extname) };
    if new_extname.to_bytes()[0] != b'.' {
        return ptr::null_mut();
    }

    let mut i: usize = 0;
    let mut pos: usize = usize::MAX;

    unsafe {
        while *old_path.add(i) != 0 {
            if i >= bufsize {
                return ptr::null_mut();
            }
            *buffer.add(i) = *old_path.add(i);
            if *old_path.add(i) == b'.' as libc::c_char {
                pos = i;
            }
            i += 1;
        }

        if i > pos {
            i = pos;
        }

        let mut new_extname_iter = new_extname.to_bytes().iter();
        loop {
            if i >= bufsize {
                return ptr::null_mut();
            }
            match new_extname_iter.next() {
                Some(&c) => {
                    *buffer.add(i) = c as libc::c_char;
                    i += 1;
                }
                None => {
                    *buffer.add(i) = 0;
                    return buffer;
                }
            }
        }
    }
}