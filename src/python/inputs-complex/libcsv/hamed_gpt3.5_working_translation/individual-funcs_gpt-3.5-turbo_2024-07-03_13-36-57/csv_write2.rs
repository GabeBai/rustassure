use std::os::raw::c_void;

static CSV_ERRORS: [&str; 5] = [
    "success",
    "error parsing data while strict checking enabled",
    "memory exhausted while increasing buffer size",
    "data size too large",
    "invalid status code",
];

//fn csv_write2(dest: *mut c_void, dest_size: usize, src: *const c_void, src_size: usize, quote: u8) -> usize {
//    let mut cdest = dest as *mut u8;
//    let mut csrc = src as *const u8;
//    let mut chars = 0;
//
//    if src.is_null() {
//        return 0;
//    }
//
//    let mut dest_size = dest_size;
//    if dest.is_null() {
//        dest_size = 0;
//    }
//
//    if dest_size > 0 {
//        unsafe {
//            *cdest = quote;
//            cdest = cdest.offset(1);
//        }
//        chars += 1;
//    }
//
//    let mut src_size = src_size;
//    while src_size > 0 {
//        unsafe {
//            if *csrc == quote {
//                if dest_size > chars {
//                    *cdest = quote;
//                    cdest = cdest.offset(1);
//                }
//                if chars < usize::MAX {
//                    chars += 1;
//                }
//            }
//
//            if dest_size > chars {
//                *cdest = *csrc;
//                cdest = cdest.offset(1);
//            }
//            if chars < usize::MAX {
//                chars += 1;
//            }
//
//            src_size -= 1;
//            csrc = csrc.offset(1);
//        }
//    }
//
//    if dest_size > chars {
//        unsafe {
//            *cdest = quote;
//        }
//        if chars < usize::MAX {
//            chars += 1;
//        }
//    }
//
//    chars
//}

// generated manually to see if ChatGPT gets rid of unsafe parts
// it does, but the arguments don't match
fn csv_write2(dest: Option<&mut [u8]>, src: &[u8], quote: u8) -> usize {
    let mut chars = 0;
    let dest_size = dest.map_or(0, |d| d.len());
    let mut cdest = dest.unwrap_or(&mut [])[..].iter_mut();
    let mut csrc = src.iter();

    if dest_size > 0 {
        if let Some(slot) = cdest.next() {
            *slot = quote;
        }
    }
    chars += 1;

    while let Some(&byte) = csrc.next() {
        if byte == quote {
            if dest_size > chars {
                if let Some(slot) = cdest.next() {
                    *slot = quote;
                }
            }
            chars += 1;
        }

        if dest_size > chars {
            if let Some(slot) = cdest.next() {
                *slot = byte;
            }
        }
        chars += 1;
    }

    if dest_size > chars {
        if let Some(slot) = cdest.next() {
            *slot = quote;
        }
    }
    chars += 1;

    chars
}


fn main() {
    // Example usage
    let mut dest: [u8; 100] = [0; 100];
    let src: [u8; 10] = [b'a', b'b', b'c', b'"', b'd', b'e', b'f', b'"', b'g', b'h'];
    let dest_size = dest.len();
    let src_size = src.len();
    let quote = b'"';

    let chars_written = csv_write2(dest.as_mut_ptr() as *mut c_void, dest_size, src.as_ptr() as *const c_void, src_size, quote);
    println!("Chars written: {}", chars_written);
}
