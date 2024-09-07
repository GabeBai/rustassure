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
}

struct NameRec {
    boy_name: [u8; 20],
    hh: UT_hash_handle,
}

use std::fs::File;
use std::io::{BufRead, BufReader};

fn main() {
    let mut names: *mut NameRec = std::ptr::null_mut();
    let mut file = File::open("test14.dat").expect("can't open file");
    let reader = BufReader::new(file);
    let mut i = 0;
    let mut j = 0;

    for line in reader.lines() {
        let linebuf = line.expect("error reading line");
        i += 1;

        let mut name = Box::new(NameRec {
            boy_name: [0; 20],
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

        let name_str = CString::new(linebuf).expect("CString conversion failed").into_bytes();
        name.boy_name.copy_from_slice(&name_str);

        // Hash calculation logic can be added here

        // Insert the name into the hash table

        // Increment i
    }

    // Lookup logic can be added here

    println!("lookup on {} of {} names succeeded", j, i);
}
