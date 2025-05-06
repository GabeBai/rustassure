use std::os::raw::{c_void, c_uchar};

fn csv_write2(dest: *mut c_void, dest_size: usize, src: *const c_void, src_size: usize, quote: c_uchar) -> usize {
    let mut cdest = dest as *mut c_uchar;
    let csrc = src as *const c_uchar;
    let mut chars = 0;

    if src.is_null() {
        return 0;
    }

    if dest.is_null() {
        return 0;
    }

    if dest_size > 0 {
        unsafe {
            *cdest = quote;
            cdest = cdest.offset(1);
        }
        chars += 1;
    }

    let mut src_size_remaining = src_size;

    while src_size_remaining > 0 {
        unsafe {
            if *csrc == quote {
                if dest_size > chars {
                    *cdest = quote;
                    cdest = cdest.offset(1);
                }
                if chars < usize::MAX {
                    chars += 1;
                }
            }

            if dest_size > chars {
                *cdest = *csrc;
                cdest = cdest.offset(1);
            }

            if chars < usize::MAX {
                chars += 1;
            }

            src_size_remaining -= 1;
            csrc = csrc.offset(1);
        }
    }

    if dest_size > chars {
        unsafe {
            *cdest = quote;
        }
        if chars < usize::MAX {
            chars += 1;
        }
    }

    chars
}
