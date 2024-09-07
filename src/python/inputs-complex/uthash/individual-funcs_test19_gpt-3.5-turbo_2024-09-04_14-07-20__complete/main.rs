use std::alloc::{alloc, dealloc, Layout};
use std::mem;

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
struct UT_hash_bucket {
    hh_head: *mut UT_hash_handle,
    count: u32,
    expand_mult: u32,
}

#[repr(C)]
struct UT_hash_table {
    buckets: *mut UT_hash_bucket,
    num_buckets: u32,
    log2_num_buckets: u32,
    num_items: u32,
    tail: *mut UT_hash_handle,
    hho: isize,
    ideal_chain_maxlen: u32,
    nonideal_items: u32,
    ineff_expands: u32,
    noexpand: u32,
    signature: u32,
}

struct example_user_t {
    id: i32,
    cookie: i32,
    hh: UT_hash_handle,
    alth: UT_hash_handle,
}

fn main() {
    let mut users: *mut example_user_t = std::ptr::null_mut();
    let mut altusers: *mut example_user_t = std::ptr::null_mut();

    for i in 0..1000 {
        let user = unsafe {
            let layout = Layout::new::<example_user_t>();
            let ptr = alloc(layout) as *mut example_user_t;
            if ptr.is_null() {
                std::process::exit(-1);
            }
            ptr
        };

        unsafe {
            (*user).id = i;
            (*user).cookie = i * i;

            // Hashing logic here

            if users.is_null() {
                (*user).hh.next = std::ptr::null_mut();
                (*user).hh.prev = std::ptr::null_mut();
                // Initialize UT_hash_table for users
            } else {
                // Handle existing users
            }

            if altusers.is_null() {
                (*user).alth.next = std::ptr::null_mut();
                (*user).alth.prev = std::ptr::null_mut();
                // Initialize UT_hash_table for altusers
            } else {
                // Handle existing altusers
            }
        }

        // Sorting logic here
    }

    // Print users and altusers

    // Cleanup memory
}

