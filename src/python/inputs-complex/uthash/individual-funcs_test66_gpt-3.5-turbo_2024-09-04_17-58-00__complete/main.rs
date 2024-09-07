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

struct person_t {
    first_name: [u8; 10],
    id: i32,
    hh: UT_hash_handle,
}

fn main() {
    let mut people: *mut person_t = std::ptr::null_mut();
    let mut person: *mut person_t;
    let names = ["bob", "jack", "gary", "ty", "bo", "phil", "art", "gil", "buck", "ted"];

    let mut id = 0;
    for &name in names.iter() {
        person = unsafe { libc::malloc(std::mem::size_of::<person_t>()) as *mut person_t };
        if person.is_null() {
            unsafe { libc::exit(-1) };
        }
        unsafe {
            libc::strcpy((*person).first_name.as_mut_ptr() as *mut i8, name.as_ptr() as *const i8);
            (*person).id = id;
            // Hash calculation omitted for brevity
        }
        println!("added {} (id {})", unsafe { std::ffi::CStr::from_ptr((*person).first_name.as_ptr() as *const i8).to_str().unwrap() }, id);
        id += 1;
    }

    let mut p: *mut *mut person_t = &mut person;
    for &name in names.iter() {
        unsafe {
            *p = std::ptr::null_mut();
            if !people.is_null() {
                // Hash lookup omitted for brevity
            }
        }
        if !person.is_null() {
            println!("found {} (id {})", unsafe { std::ffi::CStr::from_ptr((*person).first_name.as_ptr() as *const i8).to_str().unwrap() }, (*person).id);
        } else {
            println!("failed to find {}", name);
        }
    }
}
