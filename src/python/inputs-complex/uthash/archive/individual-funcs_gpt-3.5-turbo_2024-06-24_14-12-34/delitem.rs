typedef long unsigned int size_t;
typedef __builtin_va_list __gnuc_va_list;
typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;
typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;
typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;
typedef long int __quad_t;
typedef unsigned long int __u_quad_t;
typedef long int __intmax_t;
typedef unsigned long int __uintmax_t;
typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef long int __suseconds_t;
typedef int __daddr_t;
typedef int __key_t;
typedef int __clockid_t;
typedef void * __timer_t;
typedef long int __blksize_t;
typedef long int __blkcnt_t;
typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsfilcnt_t;
typedef long int __ssize_t;
typedef long int __syscall_slong_t;
typedef __off64_t __loff_t;
typedef char *__caddr_t;
typedef struct {
    int __count;
    union {
        unsigned int __wch;
        char __wchb[4];
    } __value;
} __mbstate_t;
typedef struct _G_fpos_t {
    __off_t __pos;
    __mbstate_t __state;
} __fpos_t;
struct _IO_FILE;
struct _IO_FILE;
typedef struct _IO_FILE FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
typedef void _IO_lock_t;
struct _IO_FILE {
    int _flags;
    char *_IO_read_ptr;
    char *_IO_read_end;
    char *_IO_read_base;
    char *_IO_write_base;
    char *_IO_write_ptr;
    char *_IO_write_end;
    char *_IO_buf_base;
    char *_IO_buf_end;
    char *_IO_save_base;
    char *_IO_backup_base;
    char *_IO_save_end;
    struct _IO_marker *_markers;
    struct _IO_FILE *_chain;
    int _fileno;
    int _flags2;
    __off_t _old_offset;
    unsigned short _cur_column;
    signed char _vtable_offset;
    char _shortbuf[1];
    _IO_lock_t *_lock;
    __off64_t _offset;
    struct _IO_codecvt *_codecvt;
    struct _IO_wide_data *_wide_data;
    struct _IO_FILE *_freeres_list;
    void *_freeres_buf;
    size_t __pad5;
    int _mode;
    char _unused2[15 * std::mem::size_of::<int>() - 4 * std::mem::size_of::<*mut std::ffi::c_void>() - std::mem::size_of::<size_t>()];
};
typedef __fpos_t fpos_t;
extern FILE *stdin;
extern FILE *stdout;
extern FILE *stderr;
extern fn memcmp(__s1: *const std::ffi::c_void, __s2: *const std::ffi::c_void, __n: size_t) -> i32;
struct __locale_struct {
    __locales: [__locale_data; 13],
    __ctype_b: *const u16,
    __ctype_tolower: *const i32,
    __ctype_toupper: *const i32,
    __names: [*const i8; 13],
};
typedef *mut __locale_struct __locale_t;
typedef __locale_t locale_t;
extern fn strlen(__s: *const i8) -> size_t;
typedef long int ptrdiff_t;
typedef i32 wchar_t;
struct div_t {
    quot: i32,
    rem: i32,
};
struct ldiv_t {
    quot: long int,
    rem: long int,
};
struct lldiv_t {
    quot: long long int,
    rem: long long int,
};
typedef __int32_t int32_t;
typedef struct {
    __val: [u64; 1024 / (8 * std::mem::size_of::<u64>())],
} __sigset_t;
struct timeval {
    tv_sec: __time_t,
    tv_usec: __suseconds_t,
};
struct timespec {
    tv_sec: __time_t,
    tv_nsec: __syscall_slong_t,
};
typedef long int __fd_mask;
struct fd_set {
    __fds_bits: [__fd_mask; 1024 / (8 * std::mem::size_of::<__fd_mask>())],
};
union __atomic_wide_counter {
    __value64: u64,
    __value32: {
        __low: u32,
        __high: u32,
    },
};
struct __pthread_internal_list {
    __prev: *mut __pthread_internal_list,
    __next: *mut __pthread_internal_list,
};
struct __pthread_mutex_s {
    __lock: i32,
    __count: u32,
    __owner: i32,
    __nusers: u32,
    __kind: i32,
    __spins: i16,
    __elision: i16,
    __list: __pthread_list_t,
};
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
};
struct __pthread_cond_s {
    __wseq: __atomic_wide_counter,
    __g1_start: __atomic_wide_counter,
    __g_refs: [u32; 2],
    __g_size: [u32; 2],
    __g1_orig_size: u32,
    __wrefs: u32,
    __g_signals: [u32; 2],
};
union pthread_attr_t {
    __size: [i8; 56],
    __align: long int,
};
struct random_data {
    fptr: *mut int32_t,
    rptr: *mut int32_t,
    state: *mut int32_t,
    rand_type: i32,
    rand_deg: i32,
    rand_sep: i32,
    end_ptr: *mut int32_t,
};
struct drand48_data {
    __x: [u16; 3],
    __old_x: [u16; 3],
    __c: u16,
    __init: u16,
    __a: u64,
};
extern fn free(__ptr: *mut std::ffi::c_void);
typedef fn(*__compar_fn_t) (const std::ffi::c_void, const std::ffi::c_void) -> i32;
typedef __uint32_t uint32_t;
typedef struct UT_hash_bucket {
    hh_head: *mut UT_hash_handle,
    count: u32,
    expand_mult: u32,
} UT_hash_bucket;
typedef struct UT_hash_handle {
    tbl: *mut UT_hash_table,
    prev: *mut std::ffi::c_void,
    next: *mut std::ffi::c_void,
    hh_prev: *mut UT_hash_handle,
    hh_next: *mut UT_hash_handle,
    key: *const std::ffi::c_void,
    keylen: u32,
    hashv: u32,
} UT_hash_handle;
typedef struct {
    name: [i8; 32],
    weight: i32,
    hh: UT_hash_handle,
} hstruct_t;

fn delitem(hTable: &mut *mut hstruct_t, name: *const i8) {
    let mut item: *mut hstruct_t;
    let _uthash_hfstr_keylen = strlen(name) as u32;
    let mut _hf_hashv: u32 = 0xfeedbeef;
    let mut _hj_i: u32 = 0x9e3779b9;
    let mut _hj_j: u32 = 0x9e3779b9;
    let mut _hj_k: u32 = _uthash_hfstr_keylen as u32;
    while _hj_k >= 12 {
        _hj_i += (name[0] as u32 + (name[1] as u32 << 8) + (name[2] as u32 << 16) + (name[3] as u32 << 24));
        _hj_j += (name[4] as u32 + (name[5] as u32 << 8) + (name[6] as u32 << 16) + (name[7] as u32 << 24));
        _hf_hashv += (name[8] as u32 + (name[9] as u32 << 8) + (name[10] as u32 << 16) + (name[11] as u32 << 24));
        _hj_i -= _hj_j;
        _hj_i -= _hf_hashv;
        _hj_i ^= (_hf_hashv >> 13);
        _hj_j -= _hf_hashv;
        _hj_j -= _hj_i;
        _hj_j ^= (_hj_i << 8);
        _hf_hashv -= _hj_i;
        _hf_hashv -= _hj_j;
        _hf_hashv ^= (_hj_j >> 13);
        _hj_i -= _hj_j;
        _hj_i -= _hf_hashv;
        _hj_i ^= (_hf_hashv >> 12);
        _hj_j -= _hf_hashv;
        _hj_j -= _hj_i;
        _hj_j ^= (_hj_i << 16);
        _hf_hashv -= _hj_i;
        _hf_hashv -= _hj_j;
        _hf_hashv ^= (_hj_j >> 5);
        _hj_i -= _hj_j;
        _hj_i -= _hf_hashv;
        _hj_i ^= (_hf_hashv >> 3);
        _hj_j -= _hf_hashv;
        _hj_j -= _hj_i;
        _hj_j ^= (_hj_i << 10);
        _hf_hashv -= _hj_i;
        _hf_hashv -= _hj_j;
        _hf_hashv ^= (_hj_j >> 15);
        name = name.offset(12);
        _hj_k -= 12;
    }
    _hf_hashv += _uthash_hfstr_keylen;
    match _hj_k {
        11 => _hf_hashv += (name[10] as u32 << 24),
        10 => _hf_hashv += (name[9] as u32 << 16),
        9 => _hf_hashv += (name[8] as u32 << 8),
        8 => _hj_j += (name[7] as u32 << 24),
        7 => _hj_j += (name[6] as u32 << 16),
        6 => _hj_j += (name[5] as u32 << 8),
        5 => _hj_j += name[4] as u32,
        4 => _hj_i += (name[3] as u32 << 24),
        3 => _hj_i += (name[2] as u32 << 16),
        2 => _hj_i += (name[1] as u32 << 8),
        1 => _hj_i += name[0] as u32,
        _ => {}
    }
    _hj_i -= _hj_j;
    _hj_i -= _hf_hashv;
    _hj_i ^= (_hf_hashv >> 13);
    _hj_j -= _hf_hashv;
    _hj_j -= _hj_i;
    _hj_j ^= (_hj_i << 8);
    _hf_hashv -= _hj_i;
    _hf_hashv -= _hj_j;
    _hf_hashv ^= (_hj_j >> 13);
    _hj_i -= _hj_j;
    _hj_i -= _hf_hashv;
    _hj_i ^= (_hf_hashv >> 12);
    _hj_j -= _hf_hashv;
    _hj_j -= _hj_i;
    _hj_j ^= (_hj_i << 16);
    _hf_hashv -= _hj_i;
    _hf_hashv -= _hj_j;
    _hf_hashv ^= (_hj_j >> 5);
    _hj_i -= _hj_j;
    _hj_i -= _hf_hashv;
    _hj_i ^= (_hf_hashv >> 3);
    _hj_j -= _hf_hashv;
    _hj_j -= _hj_i;
    _hj_j ^= (_hj_i << 10);
    _hf_hashv -= _hj_i;
    _hf_hashv -= _hj_j;
    _hf_hashv ^= (_hj_j >> 15);
    if *hTable != std::ptr::null_mut() {
        let mut _hf_bkt: u32 = _hf_hashv & ((*hTable).hh.tbl.num_buckets - 1);
        if (*hTable).hh.tbl.buckets[_hf_bkt].hh_head != std::ptr::null_mut() {
            item = ((*hTable).hh.tbl.buckets[_hf_bkt].hh_head as *mut hstruct_t).offset(-((*hTable).hh.tbl.hho as isize));
        } else {
            item = std::ptr::null_mut();
        }
        while item != std::ptr::null_mut() {
            if (*item).hh.hashv == _hf_hashv && (*item).hh.keylen == _uthash_hfstr_keylen {
                if memcmp((*item).hh.key, name, _uthash_hfstr_keylen) == 0 {
                    break;
                }
            }
            if (*item).hh.hh_next != std::ptr::null_mut() {
                item = ((*item).hh.hh_next as *mut hstruct_t).offset(-((*hTable).hh.tbl.hho as isize));
            } else {
                item = std::ptr::null_mut();
            }
        }
    }
    if item != std::ptr::null_mut() {
        let _hd_hh_del = &mut (*item).hh;
        if _hd_hh_del.prev == std::ptr::null_mut() && _hd_hh_del.next == std::ptr::null_mut() {
            free((*hTable).hh.tbl.buckets as *mut std::ffi::c_void);
            free((*hTable).hh.tbl as *mut std::ffi::c_void);
            *hTable = std::ptr::null_mut();
        } else {
            let mut _hd_bkt: u32;
            if _hd_hh_del == (*hTable).hh.tbl.tail {
                (*hTable).hh.tbl.tail = ((*hTable).hh.tbl.tail as *mut UT_hash_handle).offset(-((*hTable).hh.tbl.hho as isize));
            }
            if _hd_hh_del.prev != std::ptr::null_mut() {
                ((*hTable) as *mut UT_hash_handle).offset(-((*hTable).hh.tbl.hho as isize)).next = _hd_hh_del.next;
            } else {
                *hTable = _hd_hh_del.next as *mut hstruct_t;
            }
            if _hd_hh_del.next != std::ptr::null_mut() {
                ((*hTable) as *mut UT_hash_handle).offset(-((*hTable).hh.tbl.hho as isize)).prev = _hd_hh_del.prev;
            }
            _hd_bkt = _hd_hh_del.hashv & ((*hTable).hh.tbl.num_buckets - 1);
            let _hd_head = &mut (*hTable).hh.tbl.buckets[_hd_bkt];
            _hd_head.count -= 1;
            if _hd_head.hh_head == _hd_hh_del {
                _hd_head.hh_head = _hd_hh_del.hh_next;
            }
            if _hd_hh_del.hh_prev != std::ptr::null_mut() {
                _hd_hh_del.hh_prev.hh_next = _hd_hh_del.hh_next;
            }
            if _hd_hh_del.hh_next != std::ptr::null_mut() {
                _hd_hh_del.hh_next.hh_prev = _hd_hh_del.hh_prev;
            }
            (*hTable).hh.tbl.num_items -= 1;
        }
    }
}
