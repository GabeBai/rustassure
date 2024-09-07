use std::alloc::{alloc, dealloc, Layout};
use std::ptr;

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

#[repr(C)]
struct UT_hash_bucket {
    hh_head: *mut UT_hash_handle,
    count: u32,
    expand_mult: u32,
}

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
struct example_user_t {
    id: [u8; 3],
    cookie: i32,
    hh: UT_hash_handle,
}

fn main() {
    let mut users: *mut example_user_t = ptr::null_mut();

    for i in 0..10 {
        let user = Box::new(example_user_t {
            id: [0; 3],
            cookie: i * i,
            hh: UT_hash_handle {
                tbl: ptr::null_mut(),
                prev: ptr::null_mut(),
                next: ptr::null_mut(),
                hh_prev: ptr::null_mut(),
                hh_next: ptr::null_mut(),
                key: ptr::null(),
                keylen: 0,
                hashv: 0,
            },
        });

        let user_ptr = Box::into_raw(user);

        // Add user to the hash table
        // Code for adding user to the hash table goes here

        // Append user to the linked list
        unsafe {
            (*user_ptr).hh.next = users as *mut std::ffi::c_void;
            users = user_ptr;
        }
    }

    // Code for searching and deleting users goes here

    // Print users
    let mut current_user = users;
    while !current_user.is_null() {
        unsafe {
            let user = &*current_user;
            println!("user {:?}, cookie {}", String::from_utf8_lossy(&user.id), user.cookie);
            current_user = user.hh.next as *mut example_user_t;
        }
    }

    // Free memory
    let mut current_user = users;
    while !current_user.is_null() {
        unsafe {
            let user = Box::from_raw(current_user);
            current_user = user.hh.next as *mut example_user_t;
        }
    }
}
