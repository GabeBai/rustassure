use std::os::raw::c_void;
use std::alloc::{alloc, Layout};
use std::ptr;

struct UT_hash_table {
    tbl: *mut UT_hash_table,
    prev: *mut c_void,
    next: *mut c_void,
    hh_prev: *mut UT_hash_handle,
    hh_next: *mut UT_hash_handle,
    key: *const c_void,
    keylen: u32,
    hashv: u32,
}

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

struct test_t {
    a: i32,
    b: i32,
    hh: UT_hash_handle,
}

fn make_test(value: i32) -> *mut test_t {
    let test = unsafe {
        let layout = Layout::new::<test_t>();
        let ptr = alloc(layout) as *mut test_t;
        assert!(!ptr.is_null(), "test != NULL");
        ptr
    };

    unsafe {
        (*test).a = value;
    }

    test
}

fn main() {
    let test = make_test(42);
    println!("Test struct created with value: {}", unsafe { (*test).a });

    // Don't forget to free memory allocated using alloc
    unsafe {
        std::alloc::dealloc(test as *mut u8, Layout::new::<test_t>());
    }
}
