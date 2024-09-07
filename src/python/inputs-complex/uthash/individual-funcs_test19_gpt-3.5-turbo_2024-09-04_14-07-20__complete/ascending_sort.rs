use std::os::raw::c_void;

#[repr(C)]
struct UT_hash_table {
    // Define UT_hash_table fields here if needed
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

unsafe extern "C" fn ascending_sort(_a: *mut c_void, _b: *mut c_void) -> i32 {
    let a = _a as *const example_user_t;
    let b = _b as *const example_user_t;

    let a = &*a;
    let b = &*b;

    if a.id == b.id {
        0
    } else if a.id < b.id {
        -1
    } else {
        1
    }
}

fn main() {
    // You can use the ascending_sort function here
}
