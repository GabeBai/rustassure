use std::alloc::{alloc, dealloc, Layout};
use std::ptr;

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

#[repr(C)]
struct UT_hash_handle {
    tbl: *mut UT_hash_table,
    prev: *mut UT_hash_handle,
    next: *mut UT_hash_handle,
    hh_prev: *mut UT_hash_handle,
    hh_next: *mut UT_hash_handle,
    key: *const std::ffi::c_void,
    keylen: u32,
    hashv: u32,
}

struct example_user_t {
    id: i32,
    cookie: i32,
    hh: UT_hash_handle,
}

fn main() {
    let mut users: *mut example_user_t = std::ptr::null_mut();
    for i in 0..10 {
        let mut user: *mut example_user_t = unsafe { alloc(Layout::new::<example_user_t>()) as *mut example_user_t };
        if user.is_null() {
            std::process::exit(-1);
        }
        unsafe {
            (*user).id = i;
            (*user).cookie = i * i;

            let mut ha_hashv: u32 = 0xfeedbeef;
            let hj_key: &[u8; 4] = &(*user).id.to_ne_bytes();
            let mut hj_i: u32 = 0x9e3779b9;
            let mut hj_j: u32 = 0x9e3779b9;
            let mut hj_k: u32 = std::mem::size_of::<i32>() as u32;

            // Hash calculation
            // ...

            // Insert user into hash table
            // ...
        }
    }

    let mut user = users;
    while !user.is_null() {
        unsafe {
            println!("user {}, cookie {}", (*user).id, (*user).cookie);
            user = (*user).hh.next as *mut example_user_t;
        }
    }
}
