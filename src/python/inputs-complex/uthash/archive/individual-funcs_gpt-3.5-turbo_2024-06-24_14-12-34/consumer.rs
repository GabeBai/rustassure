extern crate libc;

use libc::{c_char, c_void, malloc, free, sleep, printf, fprintf, fgets, stdin, sscanf, getchar, strncmp, strlen};

struct foo_cache;

extern {
    fn foo_cache_lookup(cache: *mut foo_cache, key: *mut c_char, result: *mut *mut key_record) -> libc::c_int;
}

struct key_record {
    key: *mut c_char,
    value: *mut c_char,
}

fn consumer(arg: *mut c_void) -> *mut c_void {
    let cache = arg as *mut foo_cache;
    let mut result: *mut key_record = std::ptr::null_mut();
    let buffer = unsafe { malloc(64) as *mut c_char };
    let mut key: [c_char; 33] = [0; 33];
    let mut stop = 0;

    if buffer.is_null() {
        goto out;
    }

    unsafe { sleep(2) };
    unsafe { printf("\n\n".as_ptr() as *const i8) };

    loop {
        unsafe {
            key.iter_mut().for_each(|c| *c = 0);
            result = std::ptr::null_mut();
            printf("Enter key for lookup: ".as_ptr() as *const i8);
            fgets(buffer, 64, stdin);
            sscanf(buffer, "%s\n".as_ptr() as *const i8, key.as_mut_ptr());
            getchar();
            if strncmp(key.as_ptr(), "exit".as_ptr() as *const i8, 4) == 0 {
                stop = 1;
                continue;
            }
            printf("Got key %s (%d)\n".as_ptr() as *const i8, key.as_ptr(), strlen(key.as_ptr()));
            if foo_cache_lookup(cache, key.as_mut_ptr(), &mut result) != 0 {
                fprintf(stderr, "Could not retrieve key %s\n".as_ptr() as *const i8, key.as_ptr());
                continue;
            }
            if result.is_null() {
                printf("MISS\n".as_ptr() as *const i8);
                continue;
            }
            printf("HIT\n".as_ptr() as *const i8);
            printf("key: %s\n".as_ptr() as *const i8, (*result).key);
            printf("key : %s\n".as_ptr() as *const i8, (*result).value);
        }
        if stop != 0 {
            break;
        }
    }

out:
    if !buffer.is_null() {
        unsafe { free(buffer) };
    }
    unsafe { libc::pthread_exit(std::ptr::null_mut()) };
    std::ptr::null_mut()
}
