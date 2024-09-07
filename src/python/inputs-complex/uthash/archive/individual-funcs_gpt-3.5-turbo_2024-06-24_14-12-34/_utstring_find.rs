use std::os::raw::{c_char, c_long};

#[repr(C)]
pub struct __mbstate_t {
    __count: c_int,
    __value: __mbstate_t__bindgen_ty_1,
}

#[repr(C)]
#[derive(Copy, Clone)]
pub union __mbstate_t__bindgen_ty_1 {
    __wch: c_uint,
    __wchb: [c_char; 4usize],
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
    _cur_column: c_ushort,
    _vtable_offset: c_schar,
    _shortbuf: [c_char; 1usize],
    _lock: *mut _IO_lock_t,
    _offset: __off64_t,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut _IO_FILE,
    _freeres_buf: *mut c_void,
    __pad5: size_t,
    _mode: c_int,
    _unused2: [c_char; 56usize],
}

pub type fpos_t = __fpos_t;

#[no_mangle]
pub static mut stdin: *mut FILE;
#[no_mangle]
pub static mut stdout: *mut FILE;
#[no_mangle]
pub static mut stderr: *mut FILE;

pub type wchar_t = c_int;

#[repr(C)]
pub struct div_t {
    quot: c_int,
    rem: c_int,
}

#[repr(C)]
pub struct ldiv_t {
    quot: c_long,
    rem: c_long,
}

#[repr(C)]
pub struct lldiv_t {
    quot: c_longlong,
    rem: c_longlong,
}

#[repr(C)]
pub struct __sigset_t {
    __val: [c_ulong; 16usize],
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
pub struct fd_set {
    __fds_bits: [__fd_mask; 16usize],
}

#[repr(C)]
pub union __atomic_wide_counter {
    __value64: c_ulonglong,
    __value32: __atomic_wide_counter__bindgen_ty_1,
}

#[repr(C)]
#[derive(Copy, Clone)]
pub struct __atomic_wide_counter__bindgen_ty_1 {
    __low: c_uint,
    __high: c_uint,
}

#[repr(C)]
pub struct __pthread_internal_list {
    __prev: *mut __pthread_internal_list,
    __next: *mut __pthread_internal_list,
}

#[repr(C)]
pub struct __pthread_mutex_s {
    __lock: c_int,
    __count: c_uint,
    __owner: c_int,
    __nusers: c_uint,
    __kind: c_int,
    __spins: c_short,
    __elision: c_short,
    __list: __pthread_list_t,
}

#[repr(C)]
pub struct __pthread_rwlock_arch_t {
    __readers: c_uint,
    __writers: c_uint,
    __wrphase_futex: c_uint,
    __writers_futex: c_uint,
    __pad3: c_uint,
    __pad4: c_uint,
    __cur_writer: c_int,
    __shared: c_int,
    __rwelision: c_schar,
    __pad1: [c_uchar; 7usize],
    __pad2: c_ulong,
    __flags: c_uint,
}

#[repr(C)]
pub struct __pthread_cond_s {
    __wseq: __atomic_wide_counter,
    __g1_start: __atomic_wide_counter,
    __g_refs: [c_uint; 2usize],
    __g_size: [c_uint; 2usize],
    __g1_orig_size: c_uint,
    __wrefs: c_uint,
    __g_signals: [c_uint; 2usize],
}

#[repr(C)]
pub union pthread_attr_t {
    __size: [c_char; 56usize],
    __align: c_long,
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
    __x: [c_ushort; 3usize],
    __old_x: [c_ushort; 3usize],
    __c: c_ushort,
    __init: c_ushort,
    __a: c_ulonglong,
}

pub type __compar_fn_t = Option<extern "C" fn(*const c_void, *const c_void) -> c_int>;

#[repr(C)]
pub struct __locale_struct {
    __locales: [*mut __locale_data; 13usize],
    __ctype_b: *const c_ushort,
    __ctype_tolower: *const c_int,
    __ctype_toupper: *const c_int,
    __names: [*const c_char; 13usize],
}

pub type __locale_t = *mut __locale_struct;
pub type locale_t = __locale_t;

#[repr(C)]
pub struct UT_string {
    d: *mut c_char,
    n: size_t,
    i: size_t,
}

#[no_mangle]
pub unsafe extern "C" fn _utstring_find(
    P_Haystack: *const c_char,
    P_HaystackLen: size_t,
    P_Needle: *const c_char,
    P_NeedleLen: size_t,
    P_KMP_Table: *mut c_long,
) -> c_long {
    let mut i: c_long;
    let mut j: c_long;
    let mut V_FindPosition: c_long = -1;
    i = 0;
    j = 0;
    while j < P_HaystackLen as c_long && (P_HaystackLen as c_long - j) + i >= P_NeedleLen as c_long {
        while i > -1 && *P_Needle.offset(i as isize) != *P_Haystack.offset(j as isize) {
            i = *P_KMP_Table.offset(i as isize);
        }
        i += 1;
        j += 1;
        if i >= P_NeedleLen as c_long {
            V_FindPosition = j - i;
            break;
        }
    }
    V_FindPosition
}
