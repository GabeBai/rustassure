use std::mem;
use std::ptr;

#[repr(C)]
struct el {
    bname: [u8; 20],
    next: *mut el,
    prev: *mut el,
}

#[repr(C)]
struct example_user_t {
    id: i32,
    cookie: i32,
    hh: *mut UT_hash_handle,
}

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

#[repr(C)]
struct UT_string {
    d: *mut i8,
    n: usize,
    i: usize,
}

extern "C" {
    fn malloc(size: usize) -> *mut std::ffi::c_void;
    fn realloc(ptr: *mut std::ffi::c_void, size: usize) -> *mut std::ffi::c_void;
    fn free(ptr: *mut std::ffi::c_void);
    fn exit(status: i32) -> !;
    fn fopen(filename: *const i8, modes: *const i8) -> *mut std::ffi::c_void;
    fn fgets(s: *mut i8, n: i32, stream: *mut std::ffi::c_void) -> *mut i8;
    fn printf(format: *const i8, ...) -> i32;
    fn memcpy(dest: *mut std::ffi::c_void, src: *const std::ffi::c_void, n: usize) -> *mut std::ffi::c_void;
    fn memset(s: *mut std::ffi::c_void, c: i32, n: usize) -> *mut std::ffi::c_void;
    fn strcpy(dest: *mut i8, src: *const i8) -> *mut i8;
}

fn main() {
    let mut name: *mut el;
    let mut elt: *mut el;
    let mut tmp: *mut el;
    let mut etmp: el = unsafe { mem::zeroed() };
    let mut i: i32;
    let mut user: *mut example_user_t;
    let mut users: *mut example_user_t = ptr::null_mut();
    let mut head: *mut el = ptr::null_mut();
    let mut linebuf: [i8; 20] = [0; 20];
    let mut file: *mut std::ffi::c_void;
    let mut s: *mut UT_string;
    let binary: [u8; 2] = [0xFF, 0xFF];

    unsafe {
        file = fopen("test11.dat\0".as_ptr() as *const i8, "r\0".as_ptr() as *const i8);
        if file.is_null() {
            perror("can't open: \0".as_ptr() as *const i8);
            exit(-1);
        }

        while !fgets(linebuf.as_mut_ptr(), 20, file).is_null() {
            name = malloc(std::mem::size_of::<el>()) as *mut el;
            if name.is_null() {
                exit(-1);
            }
            strcpy((*name).bname.as_mut_ptr(), linebuf.as_ptr());
            if head.is_null() {
                head = name;
                (*head).prev = head;
                (*head).next = ptr::null_mut();
            } else {
                (*name).prev = (*head).prev;
                (*head).prev.as_mut().unwrap().next = name;
                (*head).prev = name;
                (*name).next = ptr::null_mut();
            }
        }

        // Sorting logic here

        elt = head;
        while !elt.is_null() {
            printf("%s\0".as_ptr() as *const i8, (*elt).bname.as_ptr());
            elt = (*elt).next;
        }

        memcpy(etmp.bname.as_mut_ptr(), "WES\n\0".as_ptr(), 5);
        // Search logic here

        fclose(file);
    }
}
