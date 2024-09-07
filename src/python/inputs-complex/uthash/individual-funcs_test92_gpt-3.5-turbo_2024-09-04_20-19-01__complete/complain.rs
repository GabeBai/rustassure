use std::fmt;

struct UTHashHandle<'a> {
    tbl: *mut UTHashTable,
    prev: *mut std::ffi::c_void,
    next: *mut std::ffi::c_void,
    hh_prev: *mut UTHashHandle<'a>,
    hh_next: *mut UTHashHandle<'a>,
    key: *const std::ffi::c_void,
    keylen: u32,
    hashv: u32,
}

struct ExampleUser {
    id: i32,
    cookie: i32,
    hh: UTHashHandle<'static>,
    hh2: UTHashHandle<'static>,
    mem_failed: i32,
}

struct UTHashTable {
    // Define UTHashTable fields here if needed
}

static mut MALLOC_CNT: i32 = 0;
static mut MALLOC_FAILED: i32 = 0;
static mut FREE_CNT: i32 = 0;

fn complain(index: i32, users: *mut ExampleUser, user: *mut ExampleUser) {
    let expected_frees = 3 - index;
    unsafe {
        if !users.is_null() {
            println!("{}: users hash must be empty", index);
        }
        if !(*user).hh.tbl.is_null() {
            println!("{} hash table must be empty", index);
        }
        if FREE_CNT != expected_frees {
            println!("{} Expected {} frees, only had {}", index, expected_frees, FREE_CNT);
        }
        if (*user).mem_failed != 1 {
            println!("{} Expected user->mem_failed({}) to be 1", index, (*user).mem_failed);
        }
    }
}

fn main() {
    // Call complain function with appropriate arguments
}
