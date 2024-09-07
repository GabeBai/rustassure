use std::os::raw::{c_void, c_long};
use std::mem;

#[repr(C)]
struct UT_hash_table {
    hho: c_long,
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

#[repr(C)]
struct example_user_t {
    id: i32,
    cookie: i32,
    hh: UT_hash_handle,
    alth: UT_hash_handle,
}

fn descending_sort(_a: *mut c_void, _b: *mut c_void) -> i32 {
    let a = unsafe { &*( _a as *const example_user_t) };
    let b = unsafe { &*( _b as *const example_user_t) };

    if a.id == b.id {
        0
    } else if a.id < b.id {
        1
    } else {
        -1
    }
}

fn main() {
    // Usage example
    let mut user1 = example_user_t {
        id: 1,
        cookie: 123,
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
    };

    let mut user2 = example_user_t {
        id: 2,
        cookie: 456,
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
    };

    let result = descending_sort(&mut user1 as *mut example_user_t as *mut c_void, &mut user2 as *mut example_user_t as *mut c_void);
    println!("Comparison result: {}", result);
}
