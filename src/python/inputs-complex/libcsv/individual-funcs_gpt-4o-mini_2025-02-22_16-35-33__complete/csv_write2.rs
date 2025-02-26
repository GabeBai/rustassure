pub fn csv_write2(dest: *mut std::ffi::c_void, dest_size: usize, src: *const std::ffi::c_void, src_size: usize, quote: u8) -> usize {
    let cdest = dest as *mut u8;
    let csrc = src as *const u8;
    let mut chars = 0;

    if src.is_null() {
        return 0;
    }
    let mut dest_size = if dest.is_null() { 0 } else { dest_size };
    if dest_size > 0 {
        unsafe { *cdest.add(chars) = quote };
        chars += 1;
    }

    let mut remaining_src_size = src_size;
    let mut csrc_offset = 0;

    while remaining_src_size > 0 {
        unsafe {
            if *csrc.add(csrc_offset) == quote {
                if dest_size > chars {
                    *cdest.add(chars) = quote;
                }
                if chars < usize::MAX {
                    chars += 1;
                }
            }
            if dest_size > chars {
                *cdest.add(chars) = *csrc.add(csrc_offset);
            }
            if chars < usize::MAX {
                chars += 1;
            }
        }
        remaining_src_size -= 1;
        csrc_offset += 1;
    }

    if dest_size > chars {
        unsafe { *cdest.add(chars) = quote };
    }
    if chars < usize::MAX {
        chars += 1;
    }

    chars
}
