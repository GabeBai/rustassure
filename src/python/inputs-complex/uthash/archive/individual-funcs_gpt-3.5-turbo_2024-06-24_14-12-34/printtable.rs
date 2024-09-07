use std::os::raw::{c_char, c_int};

#[repr(C)]
pub struct __mbstate_t {
    __count: c_int,
    __value: __mbstate_t__bindgen_ty_1,
}

#[repr(C)]
#[derive(Copy, Clone)]
pub union __mbstate_t__bindgen_ty_1 {
    pub __wch: u32,
    pub __wchb: [c_char; 4usize],
    _bindgen_union_align: [u32; 1usize],
}

#[repr(C)]
pub struct __fpos_t {
    __pos: __off_t,
    __state: __mbstate_t,
}

#[repr(C)]
pub struct _IO_FILE {
    _flags: c_int,
    _IO_read_ptr: *mut c_char,
    _IO_read_end: *mut c_char,
    _IO_read_base: *mut c_char,
    _IO_write_base: *mut c_char,
    _IO_write_ptr: *mut c_char,
    _IO_write_end: *mut c_char,
    _IO_buf_base: *mut c_char,
    _IO_buf_end: *mut c_char,
    _IO_save_base: *mut c_char,
    _IO_backup_base: *mut c_char,
    _IO_save_end: *mut c_char,
    _markers: *mut _IO_marker,
    _chain: *mut _IO_FILE,
    _fileno: c_int,
    _flags2: c_int,
    _old_offset: __off_t,
    _cur_column: u16,
    _vtable_offset: i8,
    _shortbuf: [c_char; 1usize],
    _lock: *mut _IO_lock_t,
    _offset: __off64_t,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut _IO_FILE,
    _freeres_buf: *mut std::ffi::c_void,
    __pad5: usize,
    _mode: c_int,
    _unused2: [c_char; 56usize],
}

pub type fpos_t = __fpos_t;

extern "C" {
    pub static mut stdin: *mut FILE;
    pub static mut stdout: *mut FILE;
    pub static mut stderr: *mut FILE;
    pub fn printf(__format: *const c_char, ...);
}

#[repr(C)]
pub struct timeval {
    tv_sec: __time_t,
    tv_usec: __suseconds_t,
}

#[repr(C)]
pub struct timespec {
    tv_sec: __time_t,
    tv_nsec: __syscall_slong_t,
}

#[repr(C)]
pub struct __pthread_internal_list {
    __prev: *mut __pthread_internal_list,
    __next: *mut __pthread_internal_list,
}

#[repr(C)]
pub struct __pthread_mutex_s {
    __lock: c_int,
    __count: u32,
    __owner: c_int,
    __nusers: u32,
    __kind: c_int,
    __spins: i16,
    __elision: i16,
    __list: __pthread_list_t,
}

#[repr(C)]
pub struct __pthread_rwlock_arch_t {
    __readers: u32,
    __writers: u32,
    __wrphase_futex: u32,
    __writers_futex: u32,
    __pad3: u32,
    __pad4: u32,
    __cur_writer: c_int,
    __shared: c_int,
    __rwelision: i8,
    __pad1: [u8; 7usize],
    __pad2: u64,
    __flags: u32,
}

#[repr(C)]
pub struct __pthread_cond_s {
    __wseq: __atomic_wide_counter,
    __g1_start: __atomic_wide_counter,
    __g_refs: [u32; 2usize],
    __g_size: [u32; 2usize],
    __g1_orig_size: u32,
    __wrefs: u32,
    __g_signals: [u32; 2usize],
}

#[repr(C)]
pub struct random_data {
    fptr: *mut int32_t,
    rptr: *mut int32_t,
    state: *mut int32_t,
    rand_type: c_int,
    rand_deg: c_int,
    rand_sep: c_int,
    end_ptr: *mut int32_t,
}

#[repr(C)]
pub struct drand48_data {
    __x: [u16; 3usize],
    __old_x: [u16; 3usize],
    __c: u16,
    __init: u16,
    __a: u64,
}

pub type __compar_fn_t = Option<unsafe extern "C" fn(*const std::ffi::c_void, *const std::ffi::c_void) -> c_int>;

#[repr(C)]
pub struct UT_hash_bucket {
    hh_head: *mut UT_hash_handle,
    count: u32,
    expand_mult: u32,
}

#[repr(C)]
pub struct UT_hash_handle {
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
pub struct hstruct_t {
    name: [c_char; 32usize],
    weight: c_int,
    hh: UT_hash_handle,
}

pub unsafe extern "C" fn printtable(hTable: *const hstruct_t) {
    let mut search: *const hstruct_t;
    let mut tmp: *const hstruct_t;
    search = hTable;
    tmp = if !hTable.is_null() { (*hTable).hh.next } else { std::ptr::null() };
    while !search.is_null() {
        printf(b"%d: %s\n\0".as_ptr() as *const c_char, (*search).weight, (*search).name.as_ptr());
        search = tmp;
        tmp = if !tmp.is_null() { (*tmp).hh.next } else { std::ptr::null() };
    }
    printf(b"###\n\0".as_ptr() as *const c_char);
}
