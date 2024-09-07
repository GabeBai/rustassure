extern crate libc;

use libc::{pthread_rwlock_t, size_t, malloc, pthread_rwlock_init, free};

pub struct foo_cache_entry {
    key: *mut libc::c_char,
    data: *mut libc::c_void,
    hh: UT_hash_handle,
}

pub struct foo_cache {
    max_entries: size_t,
    cache_lock: pthread_rwlock_t,
    entries: *mut foo_cache_entry,
    free_cb: extern "C" fn(*mut libc::c_void),
}

impl foo_cache {
    pub fn new(capacity: size_t, free_cb: extern "C" fn(*mut libc::c_void)) -> Result<Self, i32> {
        let mut new: *mut foo_cache = std::ptr::null_mut();
        let mut rv: i32;

        if new.is_null() {
            return Err(22);
        }

        if unsafe { malloc(std::mem::size_of::<foo_cache>()) } == std::ptr::null_mut() {
            return Err(12);
        }

        rv = unsafe { pthread_rwlock_init(&mut (*new).cache_lock, std::ptr::null()) };
        if rv != 0 {
            return Err(rv);
        }

        (*new).max_entries = capacity;
        (*new).entries = std::ptr::null_mut();
        (*new).free_cb = free_cb;

        Ok(Self {
            max_entries: (*new).max_entries,
            cache_lock: (*new).cache_lock,
            entries: (*new).entries,
            free_cb: (*new).free_cb,
        })
    }
}

extern "C" {
    fn foo_cache_create(dst: *mut *mut foo_cache, capacity: size_t, free_cb: extern "C" fn(*mut libc::c_void)) -> i32;
}
