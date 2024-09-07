use std::ffi::CString;

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
struct item {
    name: [u8; 4], // Update the size to match the length of the strings
    sub: *mut item,
    val: i32,
    hh: UT_hash_handle,
}

fn main() {
    let mut items: *mut item = std::ptr::null_mut();
    
    let i = Box::new(item {
        name: *b"bob\0",
        sub: std::ptr::null_mut(),
        val: 0,
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
    });

    let s = Box::new(item {
        name: *b"age\0",
        sub: std::ptr::null_mut(),
        val: 37,
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
    });

    // Rest of the code remains the same
}
