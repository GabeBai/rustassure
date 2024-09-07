extern crate libc;

use libc::{c_char, c_void, free};

#[repr(C)]
struct key_record {
    key: *mut c_char,
    value: *mut c_char,
}

fn free_random_entry(entry: *mut c_void) {
    let record = entry as *mut key_record;
    if !record.is_null() {
        unsafe {
            if !(*record).key.is_null() {
                free((*record).key as *mut c_void);
            }
            if !(*record).value.is_null() {
                free((*record).value as *mut c_void);
            }
            free(record as *mut c_void);
        }
    }
}
