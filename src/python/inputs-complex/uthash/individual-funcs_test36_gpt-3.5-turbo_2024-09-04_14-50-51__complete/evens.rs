use std::os::raw::{c_char, c_int, c_void};

#[repr(C)]
pub struct UT_hash_handle {
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
pub struct UT_hash_table;

#[repr(C)]
pub struct example_user_t {
    id: c_int,
    hh: UT_hash_handle,
    ah: UT_hash_handle,
}

extern "C" {
    pub fn evens(userv: *mut c_void) -> c_int;
}

