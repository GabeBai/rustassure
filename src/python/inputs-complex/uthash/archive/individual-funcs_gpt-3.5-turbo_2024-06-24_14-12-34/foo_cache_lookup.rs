extern crate libc;

use libc::{pthread_rwlock_t, pthread_rwlock_wrlock, pthread_rwlock_unlock, pthread_t, size_t, strnlen, memcmp, malloc, free, exit, pthread_rwlock_t, pthread_rwlock_wrlock, pthread_rwlock_unlock};

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
    free_cb: extern "C" fn(*mut libc::c_void),
}

#[no_mangle]
pub extern "C" fn foo_cache_lookup(cache: *mut foo_cache, key: *mut libc::c_char, result: *mut libc::c_void) -> libc::c_int {
    let mut rv: libc::c_int;
    let mut tmp: *mut foo_cache_entry = std::ptr::null_mut();
    let mut dirty_hack: *mut *mut libc::c_void = result as *mut *mut libc::c_void;
    if cache.is_null() || key.is_null() || result.is_null() {
        return 22;
    }
    rv = unsafe { pthread_rwlock_wrlock(&mut (*cache).cache_lock) };
    if rv != 0 {
        return rv;
    }
    let key_len = unsafe { strnlen(key, 32) };
    // Rest of the function implementation goes here
    return rv;
}
