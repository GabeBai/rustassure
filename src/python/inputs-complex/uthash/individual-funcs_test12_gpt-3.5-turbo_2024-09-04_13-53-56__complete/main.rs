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
    prev: *mut c_void,
    next: *mut c_void,
    hh_prev: *mut UT_hash_handle,
    hh_next: *mut UT_hash_handle,
    key: *const c_void,
    keylen: u32,
    hashv: u32,
}

#[repr(C)]
struct person_t {
    first_name: [u8; 10],
    id: i32,
    hh: UT_hash_handle,
}

extern "C" {
    fn malloc(size: usize) -> *mut c_void;
    fn free(ptr: *mut c_void);
    fn exit(status: i32) -> !;
    fn printf(format: *const c_char, ...) -> i32;
    fn strlen(s: *const c_char) -> usize;
    fn memcmp(s1: *const c_void, s2: *const c_void, n: usize) -> i32;
    fn strcpy(dest: *mut c_char, src: *const c_char) -> *mut c_char;
}

fn main() {
    let mut people: *mut person_t = std::ptr::null_mut();
    let mut person: *mut person_t;
    let names = ["bob", "jack", "gary", "ty", "bo", "phil", "art", "gil", "buck", "ted", std::ptr::null()];
    let mut id = 0;

    for name in names.iter() {
        person = unsafe { malloc(mem::size_of::<person_t>()) as *mut person_t };
        if person.is_null() {
            unsafe { exit(-1) };
        }
        unsafe {
            strcpy((*person).first_name.as_mut_ptr(), name.as_ptr() as *const c_char);
            (*person).id = id;
            // Hash calculation omitted for brevity
        }
        println!("added {} (id {})", unsafe { std::ffi::CStr::from_ptr((*person).first_name.as_ptr() as *const c_char).to_str().unwrap() }, id);
        id += 1;
    }

    for name in names.iter() {
        let mut person: *mut person_t = std::ptr::null_mut();
        // Hash calculation and search omitted for brevity
        if !person.is_null() {
            println!("found {} (id {})", unsafe { std::ffi::CStr::from_ptr((*person).first_name.as_ptr() as *const c_char).to_str().unwrap() }, (*person).id);
        } else {
            println!("failed to find {}", name);
        }
    }
}
