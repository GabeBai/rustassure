extern crate libc;

use libc::{c_char, c_void, size_t, fprintf, stderr, strlen, pthread_t, pthread_create, pthread_exit};

extern "C" {
    fn foo_cache_insert(cache: *mut foo_cache, key: *mut c_char, data: *mut c_void) -> i32;
}

struct foo_cache;

struct key_record {
    key: *mut c_char,
    value: *mut c_char,
}

extern "C" {
    fn generate_random_entry(entry: *mut *mut key_record) -> i32;
}

fn producer(arg: *mut c_void) -> *mut c_void {
    let cache = arg as *mut foo_cache;
    let mut i = 0;
    while i < 32 {
        let mut entry: *mut key_record = std::ptr::null_mut();
        if generate_random_entry(&mut entry) != 0 {
            unsafe {
                fprintf(stderr, "generate_random_entry() failed\n\0".as_ptr() as *const i8);
            }
            i += 1;
            continue;
        }
        unsafe {
            printf("inserted %s (%d)\n\0".as_ptr() as *const i8, (*entry).key, strlen((*entry).key) as i32);
        }
        if foo_cache_insert(cache, (*entry).key, entry as *mut c_void) != 0 {
            unsafe {
                fprintf(stderr, "foo_cache_insert() failed\n\0".as_ptr() as *const i8);
            }
            i += 1;
            continue;
        }
        i += 1;
    }
    pthread_exit(std::ptr::null_mut());
    std::ptr::null_mut()
}
