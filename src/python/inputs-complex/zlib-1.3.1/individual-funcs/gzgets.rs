rust
// This is an example of how to translate C code to Rust using the rust-bindgen tool.

use std::ffi::CString;
use std::os::raw::c_char;

fn gzgets(file: *mut GZFile, buf: *mut c_char, len: u32) {
    let state = unsafe { (file as *mut GZState).as_ref() }.unwrap();

    if state.mode != GZMode::Read || state.err != ZErrno::Ok && state.err != ZErrno::BufError {
        return;
    }

    if state.seek {
        state.seek = 0;
        if gz_skip(state, state.skip) == -1 {
            return;
        }
    }

    let mut str = buf;
    let mut left = len as u32 - 1;
    while left > 0 {
        if state.x.have == 0 && gz_fetch(state) == -1 {
            return;
        }

        if state.x.have == 0 || state.past {
            break;
        }

        let mut n = state.x.have as u32 > left ? left : state.x.have as u32;
        let eol = unsafe { memchr(state.x.next, '\n', n) };
        if eol.is_some() {
            n += 1;
        }

        unsafe {
            std::ptr::copy_nonoverlapping(state.x.next, buf, n as usize);
            state.x.have -= n as u32;
            state.x.next += n as usize;
            state.x.pos += n as u64;
        }

        left -= n;
        str = unsafe { buf.offset(n as isize) };
    }
}