use std::ffi::c_void;

fn csv_write2(dest: *mut c_void, dest_size: usize, src: *const c_void, src_size: usize, quote: u8) -> usize {
    let cdest = dest as *mut u8;
    let csrc = src as *const u8;
    let mut chars = 0;

    if src.is_null() {
        return 0;
    }

    let mut cdest_offset = 0;
    if !dest.is_null() && dest_size > 0 {
        unsafe {
            *cdest.add(cdest_offset) = quote;
        }
        cdest_offset += 1;
    }
    chars += 1;

    for i in 0..src_size {
        unsafe {
            if *csrc.add(i) == quote {
                if dest_size > chars {
                    *cdest.add(cdest_offset) = quote;
                    cdest_offset += 1;
                }
                if chars < usize::MAX {
                    chars += 1;
                }
            }
            if dest_size > chars {
                *cdest.add(cdest_offset) = *csrc.add(i);
                cdest_offset += 1;
            }
            if chars < usize::MAX {
                chars += 1;
            }
        }
    }

    if dest_size > chars {
        unsafe {
            *cdest.add(cdest_offset) = quote;
        }
    }
    if chars < usize::MAX {
        chars += 1;
    }

    chars
}
