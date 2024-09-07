use std::os::raw::{c_char, c_void};
use std::mem::size_of;

type size_t = usize;
type wchar_t = i32;
type int32_t = i32;
type __off_t = i64;
type __off64_t = i64;
type __syscall_slong_t = i64;
type __suseconds_t = i64;

#[repr(C)]
struct __mbstate_t {
    __count: i32,
    __value: [u32; 2],
}

#[repr(C)]
struct __fpos_t {
    __pos: __off_t,
    __state: __mbstate_t,
}

#[repr(C)]
struct _IO_FILE {
    _flags: i32,
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
    _fileno: i32,
    _flags2: i32,
    _old_offset: __off_t,
    _cur_column: u16,
    _vtable_offset: i8,
    _shortbuf: [c_char; 1],
    _lock: *mut _IO_lock_t,
    _offset: __off64_t,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut _IO_FILE,
    _freeres_buf: *mut c_void,
    __pad5: size_t,
    _mode: i32,
    _unused2: [c_char; 15 * size_of::<i32>() - 4 * size_of::<*mut c_void>() - size_of::<size_t>()],
}

type fpos_t = __fpos_t;

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
    __val: [u64; 128],
}

#[repr(C)]
struct timeval {
    tv_sec: __time_t,
    tv_usec: __suseconds_t,
}

#[repr(C)]
struct timespec {
    tv_sec: __time_t,
    tv_nsec: __syscall_slong_t,
}

#[repr(C)]
struct fd_set {
    __fds_bits: [__fd_mask; 128],
}

#[repr(C)]
union __atomic_wide_counter {
    __value64: u64,
    __value32: [u32; 2],
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
    __size: [c_char; 56],
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

extern {
    fn malloc(size: size_t) -> *mut c_void;
    fn free(ptr: *mut c_void);
}

#[no_mangle]
pub extern "C" fn utstring_find(
    s: *mut UT_string,
    P_StartPosition: i64,
    P_Needle: *const c_char,
    P_NeedleLen: size_t,
) -> i64 {
    let mut V_StartPosition: i64;
    let mut V_HaystackLen: i64;
    let mut V_KMP_Table: *mut i64;
    let mut V_FindPosition: i64 = -1;
    if P_StartPosition < 0 {
        V_StartPosition = (*s).i + P_StartPosition;
    } else {
        V_StartPosition = P_StartPosition;
    }
    V_HaystackLen = (*s).i - V_StartPosition;
    if V_HaystackLen >= P_NeedleLen as i64 && P_NeedleLen > 0 {
        V_KMP_Table = unsafe { malloc(size_of::<i64>() * (P_NeedleLen + 1)) as *mut i64 };
        if !V_KMP_Table.is_null() {
            _utstring_BuildTable(P_Needle, P_NeedleLen, V_KMP_Table);
            V_FindPosition = _utstring_find(
                unsafe { (*s).d.add(V_StartPosition as usize) },
                V_HaystackLen as usize,
                P_Needle,
                P_NeedleLen,
                V_KMP_Table,
            );
            if V_FindPosition >= 0 {
                V_FindPosition += V_StartPosition;
            }
            unsafe { free(V_KMP_Table as *mut c_void) };
        }
    }
    V_FindPosition
}
