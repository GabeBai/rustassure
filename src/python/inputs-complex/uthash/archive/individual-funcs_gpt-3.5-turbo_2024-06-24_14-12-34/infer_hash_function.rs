use std::os::raw::{c_char, c_int, c_long, c_ulong};

pub type size_t = c_ulong;
pub type wchar_t = c_int;
pub type locale_t = *mut __locale_struct;
pub type div_t = div;
pub type ldiv_t = ldiv;
pub type lldiv_t = lldiv;
pub type __u_char = u8;
pub type __u_short = u16;
pub type __u_int = u32;
pub type __u_long = u64;
pub type __int8_t = i8;
pub type __uint8_t = u8;
pub type __int16_t = i16;
pub type __uint16_t = u16;
pub type __int32_t = i32;
pub type __uint32_t = u32;
pub type __int64_t = i64;
pub type __uint64_t = u64;
pub type __int_least8_t = i8;
pub type __uint_least8_t = u8;
pub type __int_least16_t = i16;
pub type __uint_least16_t = u16;
pub type __int_least32_t = i32;
pub type __uint_least32_t = u32;
pub type __int_least64_t = i64;
pub type __uint_least64_t = u64;
pub type __quad_t = c_long;
pub type __u_quad_t = c_ulong;
pub type __intmax_t = c_long;
pub type __uintmax_t = c_ulong;
pub type __dev_t = c_ulong;
pub type __uid_t = c_uint;
pub type __gid_t = c_uint;
pub type __ino_t = c_ulong;
pub type __mode_t = c_uint;
pub type __nlink_t = c_ulong;
pub type __off_t = c_long;
pub type __off64_t = c_long;
pub type __pid_t = c_int;
pub type __fsid_t = [c_int; 2];
pub type __clock_t = c_long;
pub type __id_t = c_uint;
pub type __time_t = c_long;
pub type __useconds_t = c_uint;
pub type __suseconds_t = c_long;
pub type __daddr_t = c_int;
pub type __key_t = c_int;
pub type __clockid_t = c_int;
pub type __timer_t = *mut core::ffi::c_void;
pub type __blksize_t = c_long;
pub type __blkcnt_t = c_long;
pub type __fsblkcnt_t = c_ulong;
pub type __fsfilcnt_t = c_ulong;
pub type __ssize_t = c_long;
pub type __syscall_slong_t = c_long;
pub type __loff_t = __off64_t;
pub type __caddr_t = *mut c_char;
pub type __socklen_t = c_uint;
pub type __sig_atomic_t = c_int;
pub type mode_t = __mode_t;
pub type off_t = __off_t;
pub type ssize_t = __ssize_t;
pub type int32_t = i32;
pub type sigset_t = __sigset_t;
pub type pthread_t = c_ulong;
pub type pthread_attr_t = __pthread_internal_list;
pub type fd_set = __fd_set;
pub type __atomic_wide_counter = __atomic_wide_counter;
pub type __pthread_list_t = __pthread_internal_list;
pub type __pthread_mutex_s = __pthread_mutex_s;
pub type __pthread_rwlock_arch_t = __pthread_rwlock_arch_t;
pub type __pthread_cond_s = __pthread_cond_s;
pub type fpos_t = __fpos_t;
pub type sigval = __sigval_t;
pub type siginfo_t = siginfo_t;
pub type stack_t = stack_t;
pub type greg_t = c_long;
pub type gregset_t = [greg_t; 23];
pub type fpregset_t = *mut _libc_fpstate;
pub type mcontext_t = mcontext_t;
pub type idtype_t = idtype_t;
pub type UT_hash_bucket = UT_hash_bucket;

#[repr(C)]
pub struct div {
    quot: c_int,
    rem: c_int,
}

#[repr(C)]
pub struct ldiv {
    quot: c_long,
    rem: c_long,
}

#[repr(C)]
pub struct lldiv {
    quot: c_longlong,
    rem: c_longlong,
}

#[repr(C)]
pub struct __locale_struct {
    __locales: [*mut __locale_data; 13],
    __ctype_b: *const c_ushort,
    __ctype_tolower: *const c_int,
    __ctype_toupper: *const c_int,
    __names: [*const c_char; 13],
}

#[repr(C)]
pub struct __sigset_t {
    __val: [c_ulong; 16],
}

#[repr(C)]
pub struct __fd_set {
    __fds_bits: [c_long; 32],
}

#[repr(C)]
pub struct __atomic_wide_counter {
    __val: [c_ulong; 32],
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
    __rwelision: c_char,
    __pad1: [c_uchar; 7],
    __pad2: c_ulong,
    __flags: c_uint,
}

#[repr(C)]
pub struct __pthread_cond_s {
    __wseq: __atomic_wide_counter,
    __g1_start: __atomic_wide_counter,
    __g_refs: [c_uint; 2],
    __g_size: [c_uint; 2],
    __g1_orig_size: c_uint,
    __wrefs: c_uint,
    __g_signals: [c_uint; 2],
}

#[repr(C)]
pub struct siginfo_t {
    si_signo: c_int,
    si_errno: c_int,
    si_code: c_int,
    __pad0: c_int,
    _sifields: [c_int; 128 / core::mem::size_of::<c_int>()],
}

#[repr(C)]
pub struct stack_t {
    ss_sp: *mut core::ffi::c_void,
    ss_flags: c_int,
    ss_size: size_t,
}

#[repr(C)]
pub struct mcontext_t {
    gregs: gregset_t,
    fpregs: fpregset_t,
    __reserved1: [c_ulonglong; 8],
}

#[repr(C)]
pub struct UT_hash_bucket {
    hh_head: *mut UT_hash_handle,
    count: c_uint,
    expand_mult: c_uint,
}

extern "C" {
    pub static mut stdin: *mut FILE;
    pub static mut stdout: *mut FILE;
    pub static mut stderr: *mut FILE;
}
