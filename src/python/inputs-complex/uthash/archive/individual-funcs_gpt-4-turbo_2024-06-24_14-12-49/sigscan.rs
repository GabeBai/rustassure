use std::os::raw::{c_int, c_uint, c_long, c_ulong, c_char, c_void};
use std::ffi::CStr;
use libc::{size_t, locale_t, div_t, ldiv_t, lldiv_t, wchar_t, FILE, fpos_t, stat, flock, off_t, pid_t, ssize_t, int32_t, uint8_t, uint32_t, intptr_t, intmax_t, uintmax_t, timespec, timeval, sigset_t, pthread_t, pthread_attr_t, random_data, drand48_data};

extern "C" {
    fn memcmp(s1: *const c_void, s2: *const c_void, n: size_t) -> c_int;
    fn strerror(errnum: c_int) -> *mut c_char;
    fn __errno_location() -> *mut c_int;
}

#[repr(C)]
struct __locale_struct {
    __locales: [*mut c_void; 13],
    __ctype_b: *const c_ushort,
    __ctype_tolower: *const c_int,
    __ctype_toupper: *const c_int,
    __names: [*const c_char; 13],
}

type __locale_t = *mut __locale_struct;

#[repr(C)]
struct __pthread_internal_list {
    __prev: *mut __pthread_internal_list,
    __next: *mut __pthread_internal_list,
}

#[repr(C)]
struct __pthread_mutex_s {
    __lock: c_int,
    __count: c_uint,
    __owner: c_int,
    __nusers: c_uint,
    __kind: c_int,
    __spins: c_short,
    __elision: c_short,
    __list: __pthread_internal_list,
}

#[repr(C)]
struct __pthread_rwlock_arch_t {
    __readers: c_uint,
    __writers: c_uint,
    __wrphase_futex: c_uint,
    __writers_futex: c_uint,
    __pad3: c_uint,
    __pad4: c_uint,
    __cur_writer: c_int,
    __shared: c_int,
    __rwelision: c_char,
    __pad1: [c_uchar; 7],
    __pad2: c_ulong,
    __flags: c_uint,
}

#[repr(C)]
struct __pthread_cond_s {
    __wseq: __atomic_wide_counter,
    __g1_start: __atomic_wide_counter,
    __g_refs: [c_uint; 2],
    __g_size: [c_uint; 2],
    __g1_orig_size: c_uint,
    __wrefs: c_uint,
    __g_signals: [c_uint; 2],
}

#[repr(C)]
union __atomic_wide_counter {
    __value64: c_ulonglong,
    __value32: __value32_struct,
}

#[repr(C)]
struct __value32_struct {
    __low: c_uint,
    __high: c_uint,
}

#[repr(C)]
struct __pthread_internal_list {
    __prev: *mut __pthread_internal_list,
    __next: *mut __pthread_internal_list,
}

#[repr(C)]
struct __pthread_mutex_s {
    __lock: c_int,
    __count: c_uint,
    __owner: c_int,
    __nusers: c_uint,
    __kind: c_int,
    __spins: c_short,
    __elision: c_short,
    __list: __pthread_internal_list,
}

#[repr(C)]
struct __pthread_rwlock_arch_t {
    __readers: c_uint,
    __writers: c_uint,
    __wrphase_futex: c_uint,
    __writers_futex: c_uint,
    __pad3: c_uint,
    __pad4: c_uint,
    __cur_writer: c_int,
    __shared: c_int,
    __rwelision: c_char,
    __pad1: [c_uchar; 7],
    __pad2: c_ulong,
    __flags: c_uint,
}

#[repr(C)]
struct __pthread_cond_s {
    __wseq: __atomic_wide_counter,
    __g1_start: __atomic_wide_counter,
    __g_refs: [c_uint; 2],
    __g_size: [c_uint; 2],
    __g1_orig_size: c_uint,
    __wrefs: c_uint,
    __g_signals: [c_uint; 2],
}

#[repr(C)]
union __atomic_wide_counter {
    __value64: c_ulonglong,
    __value32: __value32_struct,
}

#[repr(C)]
struct __value32_struct {
    __low: c_uint,
    __high: c_uint,
}
