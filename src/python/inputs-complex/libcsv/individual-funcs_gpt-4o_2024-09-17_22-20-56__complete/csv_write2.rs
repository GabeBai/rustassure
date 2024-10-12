use std::ffi::c_void;

fn csv_write2(dest: *mut c_void, dest_size: usize, src: *const c_void, src_size: usize, quote: u8) -> usize {
    let cdest = dest as *mut u8;
    let csrc = src as *const u8;
    let mut chars = 0;
    
    if src.is_null() {
        return 0;
    }
    
    let mut cdest = if dest.is_null() {
        std::ptr::null_mut()
    } else {
        cdest
    };
    
    if dest_size > 0 {
        unsafe {
            *cdest = quote;
            cdest = cdest.add(1);
        }
    }
    chars += 1;
    
    let mut src_size = src_size;
    let mut csrc = csrc;
    
    while src_size > 0 {
        unsafe {
            if *csrc == quote {
                if dest_size > chars {
                    *cdest = quote;
                    cdest = cdest.add(1);
                }
                if chars < usize::MAX {
                    chars += 1;
                }
            }
            if dest_size > chars {
                *cdest = *csrc;
                cdest = cdest.add(1);
            }
            if chars < usize::MAX {
                chars += 1;
            }
            src_size -= 1;
            csrc = csrc.add(1);
        }
    }
    
    if dest_size > chars {
        unsafe {
            *cdest = quote;
        }
    }
    if chars < usize::MAX {
        chars += 1;
    }
    
    chars
}
