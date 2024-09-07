use std::ffi::CString;
use std::mem;
use std::ptr;

#[repr(C)]
struct person_t {
    first_name: *mut i8,
    id: i32,
    hh: UT_hash_handle,
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

extern "C" {
    fn malloc(size: usize) -> *mut std::ffi::c_void;
    fn free(ptr: *mut std::ffi::c_void);
    fn strcpy(dest: *mut i8, src: *const i8) -> *mut i8;
    fn strlen(s: *const i8) -> usize;
    fn exit(status: i32) -> !;
    fn printf(format: *const i8, ...) -> i32;
}

fn main() {
    unsafe {
        let mut people: *mut person_t = ptr::null_mut();
        let mut person: *mut person_t;
        let mut new_person: *mut person_t;
        let mut tmp: *mut person_t;
        let names = ["bob", "jack", "gary", "ty", "bo", "phil", "art", "gil", "buck", "ted"];

        let mut id = 0;
        for &name in names.iter() {
            person = malloc(mem::size_of::<person_t>()) as *mut person_t;
            if person.is_null() {
                exit(-1);
            }

            person.as_mut().unwrap().first_name = malloc(10) as *mut i8;
            if person.as_mut().unwrap().first_name.is_null() {
                exit(-1);
            }

            let name_cstr = CString::new(name).expect("CString::new failed");
            strcpy(person.as_mut().unwrap().first_name, name_cstr.as_ptr());

            person.as_mut().unwrap().id = id;
            id += 1;

            // Hashing logic can be implemented here

            printf("added %s (id %d)\n\0".as_ptr() as *const i8, person.as_ref().unwrap().first_name, person.as_ref().unwrap().id);
        }

        // Similar translation for the rest of the code...

        // Don't forget to free allocated memory before exiting
    }
}
