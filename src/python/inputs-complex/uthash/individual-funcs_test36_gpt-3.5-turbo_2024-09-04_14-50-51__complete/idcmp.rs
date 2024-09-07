use std::os::raw::{c_void, c_char, c_int};

#[repr(C)]
struct UT_hash_table {
    // Define UT_hash_table fields if needed
}

#[repr(C)]
struct UT_hash_handle {
    tbl: *mut UT_hash_table,
    prev: *mut c_void,
    next: *mut c_void,
    hh_prev: *mut UT_hash_handle,
    hh_next: *mut UT_hash_handle,
    key: *const c_void,
    keylen: u32,
    hashv: u32,
}

struct example_user_t {
    id: c_int,
    hh: UT_hash_handle,
    ah: UT_hash_handle,
}

fn idcmp(a: *mut c_void, b: *mut c_void) -> c_int {
    let a = unsafe { &*(a as *const example_user_t) };
    let b = unsafe { &*(b as *const example_user_t) };
    (a.id - b.id)
}

fn main() {
    // Usage example
    let mut user1 = example_user_t {
        id: 1,
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
        ah: UT_hash_handle {
            tbl: std::ptr::null_mut(),
            prev: std::ptr::null_mut(),
            next: std::ptr::null_mut(),
            hh_prev: std::ptr::null_mut(),
            hh_next: std::ptr::null_mut(),
            key: std::ptr::null(),
            keylen: 0,
            hashv: 0,
        },
    };

    let mut user2 = example_user_t {
        id: 2,
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
        ah: UT_hash_handle {
            tbl: std::ptr::null_mut(),
            prev: std::ptr::null_mut(),
            next: std::ptr::null_mut(),
            hh_prev: std::ptr::null_mut(),
            hh_next: std::ptr::null_mut(),
            key: std::ptr::null(),
            keylen: 0,
            hashv: 0,
        },
    };

    let result = idcmp(&mut user1 as *mut example_user_t as *mut c_void, &mut user2 as *mut example_user_t as *mut c_void);
    println!("Comparison result: {}", result);
}
