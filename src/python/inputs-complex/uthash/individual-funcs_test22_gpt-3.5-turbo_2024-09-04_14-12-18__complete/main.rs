use std::alloc::{alloc, dealloc, Layout};
use std::ptr;

#[repr(C)]
struct UT_hash_handle {
    tbl: *mut UT_hash_table,
    prev: *mut std::ffi::c_void,
    next: *mut std::ffi::c_void,
    hh_prev: *mut UT_hash_handle,
    hh_next: *mut UT_hash_handle,
    key: *const std::ffi::c_void,
    keylen: u32,
    hashv: u32,
}

#[repr(C)]
struct UT_hash_table {
    // Define the struct fields here
}

struct msg_t {
    hh: UT_hash_handle,
    len: usize,
    encoding: char,
    text: [i32; 2],
}

struct lookup_key_t {
    encoding: char,
    text: [i32; 2],
}

fn main() {
    // Your main function code here

    // Deallocate memory for lookup_key
    unsafe {
        dealloc(lookup_key as *mut u8, Layout::new::<lookup_key_t>());
    }

    // Free memory for msgs
    let mut msg = msgs;
    while !msg.is_null() {
        let tmp = (*msg).hh.next;
        // Deallocate memory for msg
        unsafe {
            dealloc(msg as *mut u8, Layout::new::<msg_t>());
        }
        msg = tmp;
    }
}
