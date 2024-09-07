extern "C" {
    fn __assert_fail(
        __assertion: *const libc::c_char,
        __file: *const libc::c_char,
        __line: libc::c_uint,
        __function: *const libc::c_char,
    ) -> !;
}

type size_t = libc::c_ulong;
type wchar_t = libc::c_int;

#[repr(C)]
struct div_t {
    quot: libc::c_int,
    rem: libc::c_int,
}

#[repr(C)]
struct ldiv_t {
    quot: libc::c_long,
    rem: libc::c_long,
}

#[repr(C)]
struct lldiv_t {
    quot: libc::c_longlong,
    rem: libc::c_longlong,
}

type __u_char = libc::c_uchar;
type __u_short = libc::c_ushort;
type __u_int = libc::c_uint;
type __u_long = libc::c_ulong;
type __int8_t = libc::c_schar;
type __uint8_t = libc::c_uchar;
type __int16_t = libc::c_short;
type __uint16_t = libc::c_ushort;
type __int32_t = libc::c_int;
type __uint32_t = libc::c_uint;
type __int64_t = libc::c_long;
type __uint64_t = libc::c_ulong;
type __int_least8_t = __int8_t;
type __uint_least8_t = __uint8_t;
type __int_least16_t = __int16_t;
type __uint_least16_t = __uint16_t;
type __int_least32_t = __int32_t;
type __uint_least32_t = __uint32_t;
type __int_least64_t = __int64_t;
type __uint_least64_t = __uint64_t;
type __quad_t = libc::c_long;
type __u_quad_t = libc::c_ulong;
type __intmax_t = libc::c_long;
type __uintmax_t = libc::c_ulong;
type __dev_t = libc::c_ulong;
type __uid_t = libc::c_uint;
type __gid_t = libc::c_uint;
type __ino_t = libc::c_ulong;
type __mode_t = libc::c_uint;
type __nlink_t = libc::c_ulong;
type __off_t = libc::c_long;
type __off64_t = libc::c_long;
type __pid_t = libc::c_int;
type __fsid_t = libc::c_int;
type __clock_t = libc::c_long;
type __id_t = libc::c_uint;
type __time_t = libc::c_long;
type __suseconds_t = libc::c_long;
type __daddr_t = libc::c_int;
type __key_t = libc::c_int;
type __clockid_t = libc::c_int;
type __timer_t = *mut libc::c_void;
type __blksize_t = libc::c_long;
type __blkcnt_t = libc::c_long;
type __fsblkcnt_t = libc::c_ulong;
type __fsfilcnt_t = libc::c_ulong;
type __ssize_t = libc::c_long;
type __syscall_slong_t = libc::c_long;
type __loff_t = __off64_t;
type __caddr_t = *mut libc::c_char;
type int32_t = __int32_t;

#[repr(C)]
struct __sigset_t {
    __val: [libc::c_ulong; 16],
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

type __fd_mask = libc::c_long;

#[repr(C)]
struct fd_set {
    __fds_bits: [__fd_mask; 16],
}

#[repr(C)]
union __atomic_wide_counter {
    __value64: libc::c_ulonglong,
    __value32: struct {
        __low: libc::c_uint,
        __high: libc::c_uint,
    },
}

#[repr(C)]
struct __pthread_internal_list {
    __prev: *mut __pthread_internal_list,
    __next: *mut __pthread_internal_list,
}

#[repr(C)]
struct __pthread_mutex_s {
    __lock: libc::c_int,
    __count: libc::c_uint,
    __owner: libc::c_int,
    __nusers: libc::c_uint,
    __kind: libc::c_int,
    __spins: libc::c_short,
    __elision: libc::c_short,
    __list: __pthread_list_t,
}

#[repr(C)]
struct __pthread_rwlock_arch_t {
    __readers: libc::c_uint,
    __writers: libc::c_uint,
    __wrphase_futex: libc::c_uint,
    __writers_futex: libc::c_uint,
    __pad3: libc::c_uint,
    __pad4: libc::c_uint,
    __cur_writer: libc::c_int,
    __shared: libc::c_int,
    __rwelision: libc::c_schar,
    __pad1: [libc::c_uchar; 7],
    __pad2: libc::c_ulong,
    __flags: libc::c_uint,
}

#[repr(C)]
struct __pthread_cond_s {
    __wseq: __atomic_wide_counter,
    __g1_start: __atomic_wide_counter,
    __g_refs: [libc::c_uint; 2],
    __g_size: [libc::c_uint; 2],
    __g1_orig_size: libc::c_uint,
    __wrefs: libc::c_uint,
    __g_signals: [libc::c_uint; 2],
}

#[repr(C)]
union pthread_attr_t {
    __size: [libc::c_char; 56],
    __align: libc::c_long,
}

#[repr(C)]
struct random_data {
    fptr: *mut int32_t,
    rptr: *mut int32_t,
    state: *mut int32_t,
    rand_type: libc::c_int,
    rand_deg: libc::c_int,
    rand_sep: libc::c_int,
    end_ptr: *mut int32_t,
}

#[repr(C)]
struct drand48_data {
    __x: [libc::c_ushort; 3],
    __old_x: [libc::c_ushort; 3],
    __c: libc::c_ushort,
    __init: libc::c_ushort,
    __a: libc::c_ulonglong,
}

extern "C" {
    fn free(__ptr: *mut libc::c_void);
}

type __compar_fn_t = extern "C" fn(*const libc::c_void, *const libc::c_void) -> libc::c_int;

extern "C" {
    fn memcpy(
        __dest: *mut libc::c_void,
        __src: *const libc::c_void,
        __n: size_t,
    ) -> *mut libc::c_void;
    fn memcmp(
        __s1: *const libc::c_void,
        __s2: *const libc::c_void,
        __n: size_t,
    ) -> libc::c_int;
}

#[repr(C)]
struct __locale_struct {
    __locales: [*mut __locale_data; 13],
    __ctype_b: *const libc::c_ushort,
    __ctype_tolower: *const libc::c_int,
    __ctype_toupper: *const libc::c_int,
    __names: [*const libc::c_char; 13],
}

type __locale_t = *mut __locale_struct;
type locale_t = __locale_t;
type ptrdiff_t = libc::c_long;
type uint32_t = __uint32_t;

#[repr(C)]
struct UT_hash_bucket {
    hh_head: *mut UT_hash_handle,
    count: libc::c_uint,
    expand_mult: libc::c_uint,
}

#[repr(C)]
struct UT_hash_handle {
    tbl: *mut UT_hash_table,
    prev: *mut libc::c_void,
    next: *mut libc::c_void,
    hh_prev: *mut UT_hash_handle,
    hh_next: *mut UT_hash_handle,
    key: *const libc::c_void,
    keylen: libc::c_uint,
    hashv: libc::c_uint,
}

#[repr(C)]
struct item {
    payload: libc::c_int,
    hh: UT_hash_handle,
}

unsafe fn delete_without_modifying(mut head: *mut item, p: *const item) {
    let mut old = item {
        payload: 0,
        hh: UT_hash_handle {
            tbl: std::ptr::null_mut(),
            prev: std::ptr::null_mut(),
            next: std::ptr::null_mut(),
            hh_prev: std::ptr::null_mut(),
            hh_next: std::ptr::null_mut(),
            key: std::ptr::null(),
            keylen: 0,
            hashv: 0,
        },
    };
    memcpy(
        &mut old as *mut _ as *mut libc::c_void,
        p as *const _ as *const libc::c_void,
        std::mem::size_of::<item>(),
    );
    assert!(memcmp(
        &old as *const _ as *const libc::c_void,
        p as *const _ as *const libc::c_void,
        std::mem::size_of::<item>()
    ) == 0);
    assert!((*p).hh.tbl == (*head).hh.tbl);
    loop {
        let _hd_hh_del = &(*p).hh;
        if ((*_hd_hh_del).prev.is_null() && (*_hd_hh_del).next.is_null()) {
            free((*head).hh.tbl as *mut libc::c_void);
            free((*head).hh.tbl as *mut libc::c_void);
            head = std::ptr::null_mut();
        } else {
            let mut _hd_bkt: libc::c_uint;
            if (_hd_hh_del == (*(*head).hh.tbl).tail) {
                (*(*head).hh.tbl).tail = (*_hd_hh_del).prev as *mut UT_hash_handle;
            }
            if !((*_hd_hh_del).prev.is_null()) {
                (*( (*_hd_hh_del).prev as *mut UT_hash_handle)).next = (*_hd_hh_del).next;
            } else {
                head = (*_hd_hh_del).next as *mut item;
            }
            if !((*_hd_hh_del).next.is_null()) {
                (*( (*_hd_hh_del).next as *mut UT_hash_handle)).prev = (*_hd_hh_del).prev;
            }
            _hd_bkt = ((*_hd_hh_del).hashv & ((*(*head).hh.tbl).num_buckets - 1));
            let _hd_head = &mut *((*(*head).hh.tbl).buckets.offset(_hd_bkt as isize));
            (*_hd_head).count -= 1;
            if ((*_hd_head).hh_head == _hd_hh_del) {
                (*_hd_head).hh_head = (*_hd_hh_del).hh_next;
            }
            if !((*_hd_hh_del).hh_prev.is_null()) {
                (*(*_hd_hh_del).hh_prev).hh_next = (*_hd_hh_del).hh_next;
            }
            if !((*_hd_hh_del).hh_next.is_null()) {
                (*(*_hd_hh_del).hh_next).hh_prev = (*_hd_hh_del).hh_prev;
            }
            (*(*head).hh.tbl).num_items -= 1;
            break;
        }
    }
    assert!(memcmp(
        &old as *const _ as *const libc::c_void,
        p as *const _ as *const libc::c_void,
        std::mem::size_of::<item>()
    ) == 0);
}
