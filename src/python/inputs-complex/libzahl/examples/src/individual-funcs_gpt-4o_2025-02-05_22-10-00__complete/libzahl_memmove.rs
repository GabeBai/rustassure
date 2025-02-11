#![allow(unaligned_references)]
use std::ptr;

type ZahlCharT = u64;

#[no_mangle]
#[no_mangle]
fn libzahl_memmove(d: *mut ZahlCharT, s: *const ZahlCharT, n: usize) {
    unsafe {
        if d < s as *mut ZahlCharT {
            // Use copy_nonoverlapping for forward copy
            ptr::copy_nonoverlapping(s, d, n);
        } else {
            // Use copy for backward copy
            ptr::copy(s, d, n);
        }
    }
}
