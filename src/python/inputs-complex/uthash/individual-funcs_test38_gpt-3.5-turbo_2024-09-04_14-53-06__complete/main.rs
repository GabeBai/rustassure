use std::mem;
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
    prev: *mut std::ffi::c_void,
    next: *mut std::ffi::c_void,
    hh_prev: *mut UT_hash_handle,
    hh_next: *mut UT_hash_handle,
    key: *const std::ffi::c_void,
    keylen: u32,
    hashv: u32,
}

struct test_t {
    a: i32,
    hh: UT_hash_handle,
}

fn main() {
    let mut tests: *mut test_t = ptr::null_mut();
    let mut test: *mut test_t;
    let mut a: i32;
    let mut b: i32;

    for b in 0..3 {
        for a in 0..10 {
            test = ptr::null_mut();
            let mut hf_hashv: u32 = 0xfeedbeef;
            let mut ha_hashv: u32;

            // Hash calculation for 'a'
            // Skipped for brevity

            // Search for existing test_t with the same 'a'
            // Skipped for brevity

            if test.is_null() {
                test = unsafe { libc::malloc(mem::size_of::<test_t>()) as *mut test_t };
                if test.is_null() {
                    std::process::exit(-1);
                }
                unsafe {
                    libc::memset(test as *mut std::ffi::c_void, 0, mem::size_of::<test_t>());
                }
                unsafe {
                    (*test).a = a;
                }

                // Hash calculation for 'a' in the new test_t
                // Skipped for brevity

                // Insert the new test_t into the hash table
                // Skipped for brevity
            }
        }
    }

    let hash_count = if !tests.is_null() {
        unsafe { (*tests).hh.tbl.num_items }
    } else {
        0
    };
    println!("hash count {}", hash_count);
}
