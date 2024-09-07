extern crate libc;

use libc::{pthread_t, size_t};

extern "C" {
    pub fn pthread_create(
        newthread: *mut pthread_t,
        attr: *const libc::pthread_attr_t,
        start_routine: Option<extern "C" fn(*mut libc::c_void) -> *mut libc::c_void>,
        arg: *mut libc::c_void,
    ) -> libc::c_int;

    pub fn pthread_join(
        th: pthread_t,
        thread_return: *mut *mut libc::c_void,
    ) -> libc::c_int;

    pub fn fprintf(stream: *mut libc::FILE, format: *const libc::c_char, ...) -> libc::c_int;
    
    pub fn exit(status: libc::c_int) -> !;
}
