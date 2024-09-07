extern crate libc;

use libc::{size_t, c_char, malloc, free};

#[repr(C)]
struct key_record {
    key: *mut c_char,
    value: *mut c_char,
}

extern "C" {
    fn generate_random_string(dst: *mut *mut c_char, len: size_t) -> i32;
}

fn generate_random_entry(entry: *mut *mut key_record) -> i32 {
    let mut new: *mut key_record = std::ptr::null_mut();
    let mut key: *mut c_char = std::ptr::null_mut();
    let mut value: *mut c_char = std::ptr::null_mut();
    let mut rv: i32;

    if entry.is_null() {
        return 22;
    }

    rv = unsafe { generate_random_string(&mut key, 33) };
    if rv != 0 {
        return rv;
    }

    rv = unsafe { generate_random_string(&mut value, 129) };
    if rv != 0 {
        unsafe { free(key as *mut libc::c_void) };
        return rv;
    }

    unsafe {
        new = malloc(std::mem::size_of::<key_record>() as size_t) as *mut key_record;
    }

    if new.is_null() {
        unsafe {
            free(key as *mut libc::c_void);
            free(value as *mut libc::c_void);
        }
        return 12;
    }

    unsafe {
        (*new).key = key;
        (*new).value = value;
        *entry = new;
    }

    0
}
