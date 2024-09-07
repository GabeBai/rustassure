use std::mem;

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
        let mut user = Box::new(example_user_t {
            id: i,
            cookie: i * i,
            hh: UT_hash_handle {
                tbl: std::ptr::null_mut(),
                prev: std::ptr::null_mut(),
                next: std::ptr::null_mut(),
                hh_prev: std::ptr::null_mut(),
                hh_next: std::ptr::null_mut(),
                key: std::ptr::null(),
                keylen: 0,
                hashv: 0,
            },
            alth: UT_hash_handle {
                tbl: std::ptr::null_mut(),
                prev: std::ptr::null_mut(),
                next: std::ptr::null_mut(),
                hh_prev: std::ptr::null_mut(),
                hh_next: std::ptr::null_mut(),
                key: std::ptr::null(),
                keylen: 0,
                hashv: 0,
            },
        });

        // Hash calculation and insertion logic here

        if users.is_null() {
            users = Box::into_raw(user);
        } else {
            // Insert into existing hash table logic here
        }
    }

    for i in (0..10).step_by(2) {
        let j = i * i;
        let mut tmp: *mut example_user_t = std::ptr::null_mut();

        // Hash lookup logic here

        if !tmp.is_null() {
            println!("cookie {} found, user id {}", unsafe { (*tmp).cookie }, unsafe { (*tmp).id });
        } else {
            println!("cookie {} not found", j);
        }
    }
}
