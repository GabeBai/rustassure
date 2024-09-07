use std::ptr;
use std::mem;

#[repr(C)]
struct UT_hash_bucket {
    hh_head: *mut UT_hash_handle,
    count: u32,
    expand_mult: u32,
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
    // Define the fields of UT_hash_table here if needed
}

#[repr(C)]
struct item {
    payload: i32,
    hh: UT_hash_handle,
}

fn delete_without_modifying(head: *mut item, p: *const item) {
    let mut old: item = unsafe { std::mem::zeroed() };
    unsafe {
        std::ptr::copy_nonoverlapping(p, &mut old as *mut item, 1);
        assert_eq!(std::cmp::memcmp(&old as *const item as *const std::ffi::c_void, p as *const std::ffi::c_void, std::mem::size_of::<item>()), 0);
        assert_eq!((*p).hh.tbl, (*head).hh.tbl);

        let mut hd_hh_del = &(*p).hh;
        if hd_hh_del.prev.is_null() && hd_hh_del.next.is_null() {
            std::ptr::drop_in_place((*head).hh.tbl.buckets);
            std::ptr::drop_in_place((*head).hh.tbl);
            *head = std::ptr::null_mut();
        } else {
            let mut hd_bkt: u32;
            if hd_hh_del == (*head).hh.tbl.tail {
                (*head).hh.tbl.tail = ((hd_hh_del.prev as usize + (*head).hh.tbl.hho as usize) as *mut UT_hash_handle).as_mut().unwrap();
            }
            if !hd_hh_del.prev.is_null() {
                (hd_hh_del.prev as *mut UT_hash_handle).as_mut().unwrap().next = hd_hh_del.next;
            } else {
                *head = hd_hh_del.next as *mut item;
            }
            if !hd_hh_del.next.is_null() {
                (hd_hh_del.next as *mut UT_hash_handle).as_mut().unwrap().prev = hd_hh_del.prev;
            }
            hd_bkt = hd_hh_del.hashv & ((*head).hh.tbl.num_buckets - 1);
            let hd_head = &mut (*head).hh.tbl.buckets[hd_bkt as usize];
            hd_head.count -= 1;
            if hd_head.hh_head == hd_hh_del {
                hd_head.hh_head = hd_hh_del.hh_next;
            }
            if let Some(hh_prev) = hd_hh_del.hh_prev {
                hh_prev.hh_next = hd_hh_del.hh_next;
            }
            if let Some(hh_next) = hd_hh_del.hh_next {
                hh_next.hh_prev = hd_hh_del.hh_prev;
            }
            (*head).hh.tbl.num_items -= 1;
        }
        assert_eq!(std::cmp::memcmp(&old as *const item as *const std::ffi::c_void, p as *const std::ffi::c_void, std::mem::size_of::<item>()), 0);
    }
}
