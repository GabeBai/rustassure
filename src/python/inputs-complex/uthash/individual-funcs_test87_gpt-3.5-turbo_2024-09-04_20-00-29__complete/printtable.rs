use std::ptr;

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
struct hstruct_t {
    name: [u8; 32],
    weight: i32,
    hh: UT_hash_handle,
}

struct UT_hash_table {
    // Define UT_hash_table fields if needed
}

fn print_table(hTable: *const hstruct_t) {
    let mut search = hTable;
    let mut tmp;

    unsafe {
        while !search.is_null() {
            let search_ref = &*search;
            println!("{}: {}", search_ref.weight, std::str::from_utf8_unchecked(&search_ref.name));

            tmp = (*search).hh.next as *const hstruct_t;
            search = tmp;
        }
    }

    println!("###");
}
