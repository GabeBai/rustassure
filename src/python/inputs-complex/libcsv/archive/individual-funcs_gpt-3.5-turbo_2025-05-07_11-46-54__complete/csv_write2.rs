use std::os::raw::{c_void, c_uchar};
use std::ptr;

fn csv_write2(dest: *mut c_void, dest_size: usize, src: *const c_void, src_size: usize, quote: u8) -> usize {
    let mut cdest = dest as *mut u8;
    let mut csrc = src as *const u8;
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
            chars += 1;
        }
    }

    let mut src_size_remaining = src_size;

    while src_size_remaining > 0 {
        if unsafe { *csrc } == quote {
            if dest_size > chars {
                unsafe {
                    *cdest = quote;
                    cdest = cdest.offset(1);
                    chars += 1;
                }
            }
            if chars < usize::MAX {
                chars += 1;
            }
        }

        if dest_size > chars {
            unsafe {
                *cdest = *csrc;
                cdest = cdest.offset(1);
                chars += 1;
            }
        }

        if chars < usize::MAX {
            chars += 1;
        }

        src_size_remaining -= 1;
        csrc = unsafe { csrc.offset(1) };
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
