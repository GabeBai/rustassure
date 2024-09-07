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
    alth: UT_hash_handle,
}

fn main() {
    let mut users: *mut example_user_t = std::ptr::null_mut();
    let mut altusers: *mut example_user_t = std::ptr::null_mut();

    for i in 0..10 {
        let mut user = unsafe { alloc(Layout::new::<example_user_t>()) as *mut example_user_t };
        if user.is_null() {
            std::process::exit(-1);
        }

        unsafe {
            (*user).id = i;
            (*user).cookie = i * i;

            // Hash calculation for id
            let mut ha_hashv: u32 = 0xfeedbeef;
            let hj_key = &(*user).id as *const i32 as *const u8;
            let mut hj_i = 0x9e3779b9;
            let mut hj_j = 0x9e3779b9;
            let mut hj_k = std::mem::size_of::<i32>() as u32;

            // Hash calculation logic here

            // Initialize UT_hash_handle for id
            (*user).hh.hashv = ha_hashv;
            (*user).hh.key = &(*user).id as *const i32 as *const std::ffi::c_void;
            (*user).hh.keylen = std::mem::size_of::<i32>() as u32;

            if users.is_null() {
                // Initialize UT_hash_table for users
                // Add user to users
            } else {
                // Add user to existing users
            }

            // Hash calculation for cookie
            // Similar logic as above for cookie

            // Initialize UT_hash_handle for cookie
            // Similar to id

            if altusers.is_null() {
                // Initialize UT_hash_table for altusers
                // Add user to altusers
            } else {
                // Add user to existing altusers
            }
        }
    }

    let mut user = altusers;
    while !user.is_null() {
        unsafe {
            println!("cookie {}, user {}", (*user).cookie, (*user).id);
            user = (*user).alth.next as *mut example_user_t;
        }
    }
}
