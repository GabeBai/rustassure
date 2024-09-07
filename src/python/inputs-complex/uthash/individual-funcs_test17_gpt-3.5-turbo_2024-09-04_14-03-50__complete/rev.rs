use std::os::raw::c_void;

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
}

struct UT_hash_table;

fn rev(_a: *mut c_void, _b: *mut c_void) -> i32 {
    let a = unsafe { &*(a as *const example_user_t) };
    let b = unsafe { &*(b as *const example_user_t) };
    println!("called for a:{}, b:{}", a.id, b.id);
    a.id - b.id
}
