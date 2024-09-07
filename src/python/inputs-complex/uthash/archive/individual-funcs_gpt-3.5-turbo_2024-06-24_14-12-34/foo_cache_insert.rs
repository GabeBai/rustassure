extern crate libc;

use libc::{size_t, pthread_rwlock_t, pthread_rwlock_wrlock, pthread_rwlock_unlock, malloc, free, strnlen, pthread_rwlock_t};

#[repr(C)]
struct foo_cache_entry {
    key: *mut libc::c_char,
    data: *mut libc::c_void,
    hh: UT_hash_handle,
}

#[repr(C)]
struct foo_cache {
    max_entries: size_t,
    cache_lock: pthread_rwlock_t,
    entries: *mut foo_cache_entry,
    free_cb: Option<extern "C" fn(*mut libc::c_void)>,
}

#[no_mangle]
pub extern "C" fn foo_cache_insert(cache: *mut foo_cache, key: *mut libc::c_char, data: *mut libc::c_void) -> libc::c_int {
    let mut entry: *mut foo_cache_entry = std::ptr::null_mut();
    let mut tmp_entry: *mut foo_cache_entry = std::ptr::null_mut();
    let mut key_len: size_t = 0;
    let mut rv: libc::c_int;

    if cache.is_null() || data.is_null() {
        return 22;
    }

    entry = unsafe { malloc(std::mem::size_of::<foo_cache_entry>()) as *mut foo_cache_entry };
    if entry.is_null() {
        return 12;
    }

    rv = unsafe { pthread_rwlock_wrlock(&mut (*cache).cache_lock) };
    if rv != 0 {
        goto err_out;
    }

    unsafe {
        (*entry).key = key;
        (*entry).data = data;
        key_len = strnlen((*entry).key, 32);

        // Hash calculation logic here

        // UT hash table insertion logic here

        if (*cache).entries.is_null() {
            (*cache).entries = entry;
        } else {
            // UT hash table insertion logic here
        }
    }

    if (*cache).entries != std::ptr::null_mut() && (*(*cache).entries).hh.tbl.num_items >= (*cache).max_entries {
        // Cache eviction logic here
    }

    rv = unsafe { pthread_rwlock_unlock(&mut (*cache).cache_lock) };
    return rv;

    err_out:
        if !entry.is_null() {
            unsafe { free(entry as *mut libc::c_void) };
        }
        unsafe { pthread_rwlock_unlock(&mut (*cache).cache_lock) };
        return rv;
}
