use std::ffi::CString;

#[repr(C)]
struct elt {
    s: *mut i8,
    hh: UT_hash_handle,
}

#[repr(C)]
struct UT_hash_handle {
    hashv: u32,
    key: *const std::ffi::c_void,
    keylen: u32,
    hh_next: *mut UT_hash_handle,
    hh_prev: *mut UT_hash_handle,
    tbl: *mut UT_hash_table,
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

fn main() {
    let mut head: *mut elt = std::ptr::null_mut();
    let mut elts: [elt; 10] = unsafe { std::mem::zeroed() };
    let label = CString::new("hello").expect("CString::new failed").into_raw();

    for i in 0..10 {
        elts[i].s = CString::new("hello").expect("CString::new failed").into_raw();
        unsafe {
            (*elts[i].s.offset(0)) = b'a' + i as i8;
        }
        println!("{}: {}", i, unsafe { std::ffi::CStr::from_ptr(elts[i].s).to_str().unwrap() });

        // Hash calculation logic here
    }

    for i in 0..10 {
        let mut e: *mut elt = std::ptr::null_mut();
        unsafe {
            (*label.offset(0)) = b'a' + i as i8;
        }

        // Hash calculation logic here

        if !head.is_null() {
            // Search logic here
            if !e.is_null() {
                println!("found {}", std::ffi::CStr::from_ptr((*e).s).to_str().unwrap());
                println!("right address? {}", if e == &mut elts[i] { "yes" } else { "no" });
            }
        }
    }

    // Free memory
    unsafe {
        for i in 0..10 {
            libc::free(elts[i].s as *mut std::ffi::c_void);
        }
        libc::free(label as *mut std::ffi::c_void);
    }
}
