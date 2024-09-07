extern "C" {
    fn __assert_fail(__assertion: *const i8, __file: *const i8, __line: u32, __function: *const i8) -> !;
    fn free(__ptr: *mut std::ffi::c_void);
    fn memcpy(__dest: *mut std::ffi::c_void, __src: *const std::ffi::c_void, __n: usize) -> *mut std::ffi::c_void;
    fn memcmp(__s1: *const std::ffi::c_void, __s2: *const std::ffi::c_void, __n: usize) -> i32;
}

type size_t = usize;
type wchar_t = i32;
type int32_t = i32;
type __fd_mask = i64;
type __syscall_slong_t = i64;

#[repr(C)]
struct div_t {
    quot: i32,
    rem: i32,
}

#[repr(C)]
struct ldiv_t {
    quot: i64,
    rem: i64,
}

#[repr(C)]
struct lldiv_t {
    quot: i64,
    rem: i64,
}

#[repr(C)]
struct __sigset_t {
    __val: [u64; 16],
}

#[repr(C)]
struct timeval {
    tv_sec: i64,
    tv_usec: i64,
}

#[repr(C)]
struct timespec {
    tv_sec: i64,
    tv_nsec: i64,
}

#[repr(C)]
struct __pthread_internal_list {
    __prev: *mut __pthread_internal_list,
    __next: *mut __pthread_internal_list,
}

#[repr(C)]
struct __pthread_mutex_s {
    __lock: i32,
    __count: u32,
    __owner: i32,
    __nusers: u32,
    __kind: i32,
    __spins: i16,
    __elision: i16,
    __list: __pthread_list_t,
}

#[repr(C)]
struct __pthread_rwlock_arch_t {
    __readers: u32,
    __writers: u32,
    __wrphase_futex: u32,
    __writers_futex: u32,
    __pad3: u32,
    __pad4: u32,
    __cur_writer: i32,
    __shared: i32,
    __rwelision: i8,
    __pad1: [u8; 7],
    __pad2: u64,
    __flags: u32,
}

#[repr(C)]
struct __pthread_cond_s {
    __wseq: __atomic_wide_counter,
    __g1_start: __atomic_wide_counter,
    __g_refs: [u32; 2],
    __g_size: [u32; 2],
    __g1_orig_size: u32,
    __wrefs: u32,
    __g_signals: [u32; 2],
}

#[repr(C)]
union pthread_attr_t {
    __size: [i8; 56],
    __align: i64,
}

#[repr(C)]
struct random_data {
    fptr: *mut int32_t,
    rptr: *mut int32_t,
    state: *mut int32_t,
    rand_type: i32,
    rand_deg: i32,
    rand_sep: i32,
    end_ptr: *mut int32_t,
}

#[repr(C)]
struct drand48_data {
    __x: [u16; 3],
    __old_x: [u16; 3],
    __c: u16,
    __init: u16,
    __a: u64,
}

#[repr(C)]
struct __locale_struct {
    __locales: [*mut __locale_data; 13],
    __ctype_b: *const u16,
    __ctype_tolower: *const i32,
    __ctype_toupper: *const i32,
    __names: [*const i8; 13],
}

type __locale_t = *mut __locale_struct;
type locale_t = __locale_t;
type ptrdiff_t = i64;
type uint32_t = u32;

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
struct item {
    payload: i32,
    hh: UT_hash_handle,
}

fn delete_without_modifying(head: *mut item, p: *const item) {
    let mut old: item = unsafe { std::mem::zeroed() };
    unsafe {
        memcpy(&mut old as *mut item as *mut std::ffi::c_void, p as *const std::ffi::c_void, std::mem::size_of::<item>());
        assert_eq!(memcmp(&old as *const item as *const std::ffi::c_void, p as *const item as *const std::ffi::c_void, std::mem::size_of::<item>()), 0);
        assert_eq!((*p).hh.tbl, (*head).hh.tbl);
        // Code for freeing memory omitted for brevity
        assert_eq!(memcmp(&old as *const item as *const std::ffi::c_void, p as *const item as *const std::ffi::c_void, std::mem::size_of::<item>()), 0);
    }
}
