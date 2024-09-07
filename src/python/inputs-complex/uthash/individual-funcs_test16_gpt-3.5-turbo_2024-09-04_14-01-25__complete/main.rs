use std::{mem, ptr};

#[repr(C)]
struct inner {
    a: i32,
    b: i32,
}

#[repr(C)]
struct my_event {
    is: inner,
    event_code: u8,
    user_id: i32,
    hh: *mut UT_hash_handle,
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

#[repr(C)]
struct UT_hash_handle {
    tbl: *mut UT_hash_table,
    prev: *mut core::ffi::c_void,
    next: *mut core::ffi::c_void,
    hh_prev: *mut UT_hash_handle,
    hh_next: *mut UT_hash_handle,
    key: *const core::ffi::c_void,
    keylen: u32,
    hashv: u32,
}

fn main() {
    let mut events: *mut my_event = ptr::null_mut();
    let keylen: u32 = mem::size_of::<my_event>() as u32 - mem::size_of::<inner>() as u32;

    for i in 0..10 {
        let e: *mut my_event = unsafe { libc::malloc(mem::size_of::<my_event>()) as *mut my_event };
        if e.is_null() {
            libc::exit(-1);
        }
        unsafe {
            libc::memset(e as *mut core::ffi::c_void, 0, mem::size_of::<my_event>());
            (*e).is.a = i * (60 * 60 * 24 * 365);
            (*e).is.b = 0;
            (*e).event_code = b'a' + (i % 2) as u8;
            (*e).user_id = i;
            // Hash calculation logic here
        }
        // Insert into hash table logic here
    }

    let mut ev: my_event = my_event {
        is: inner { a: 5 * (60 * 60 * 24 * 365), b: 0 },
        event_code: b'b',
        user_id: 0,
        hh: ptr::null_mut(),
    };

    let mut e: *mut my_event = ptr::null_mut();
    // Search in hash table logic here

    if !e.is_null() {
        println!("found: user {}, unix time {}", unsafe { (*e).user_id }, unsafe { (*e).is.a });
    }
}
