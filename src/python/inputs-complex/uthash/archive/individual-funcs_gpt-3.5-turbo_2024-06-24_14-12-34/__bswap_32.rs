extern crate libc;

use libc::{c_char, c_uchar, c_ushort, c_uint, c_ulong, c_int, c_long, c_ulonglong, c_void, size_t};

extern "C" {
    static mut program_invocation_name: *mut c_char;
    static mut program_invocation_short_name: *mut c_char;

    type __fsid_t;
    type __locale_data;
    type __locale_struct;
    type __pthread_internal_list;
    type __pthread_mutex_s;
    type __pthread_rwlock_arch_t;
    type __pthread_cond_s;
    type __atomic_wide_counter;
    type __jmp_buf;
    type __sigset_t;
    type _pthread_cleanup_buffer;
    type __cancel_jmp_buf_tag;
    type __pthread_unwind_buf_t;
    type __mbstate_t;
    type _G_fpos_t;
    type _G_fpos64_t;
    type _IO_FILE;
    type _IO_marker;
    type _IO_codecvt;
    type _IO_wide_data;
    type _IO_lock_t;

    static mut stdin: *mut _IO_FILE;
    static mut stdout: *mut _IO_FILE;
    static mut stderr: *mut _IO_FILE;

    fn __bswap_32(__bsx: c_uint) -> c_uint;
}
