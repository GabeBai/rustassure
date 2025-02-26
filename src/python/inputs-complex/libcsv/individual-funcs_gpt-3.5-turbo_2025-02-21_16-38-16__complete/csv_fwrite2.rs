use std::os::raw::c_void;
use std::os::raw::c_int;
use std::os::raw::c_uchar;
use std::io::Write;

fn csv_fwrite2(fp: &mut std::fs::File, src: *const c_void, src_size: usize, quote: c_uchar) -> c_int {
    let csrc = src as *const c_uchar;
    
    if fp as *const _ == std::ptr::null() || src as *const _ == std::ptr::null() {
        return 0;
    }
    
    if fp.write(&[quote as u8]).is_err() {
        return -1;
    }
    
    let mut idx = 0;
    while idx < src_size {
        unsafe {
            if *csrc.offset(idx as isize) == quote {
                if fp.write(&[quote as u8]).is_err() {
                    return -1;
                }
            }
            if fp.write(&[*csrc.offset(idx as isize) as u8]).is_err() {
                return -1;
            }
        }
        idx += 1;
    }
    
    if fp.write(&[quote as u8]).is_err() {
        return -1;
    }
    
    0
}
