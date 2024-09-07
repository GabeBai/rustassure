use std::alloc::{alloc, dealloc, Layout};
use std::ptr;

struct FILE {
    _flags: i32,
    _IO_read_ptr: *mut u8,
    _IO_read_end: *mut u8,
    _IO_read_base: *mut u8,
    _IO_write_base: *mut u8,
    _IO_write_ptr: *mut u8,
    _IO_write_end: *mut u8,
    _IO_buf_base: *mut u8,
    _IO_buf_end: *mut u8,
    _IO_save_base: *mut u8,
    _IO_backup_base: *mut u8,
    _IO_save_end: *mut u8,
    _markers: *mut _IO_marker,
    _chain: *mut FILE,
    _fileno: i32,
    _flags2: i32,
    _old_offset: __off_t,
    _cur_column: u16,
    _vtable_offset: i8,
    _shortbuf: [u8; 1],
    _lock: *mut _IO_lock_t,
    _offset: __off64_t,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut FILE,
    _freeres_buf: *mut std::ffi::c_void,
    __pad5: usize,
    _mode: i32,
    _unused2: [i32; 15],
}

struct _IO_marker;

struct _IO_codecvt;

struct _IO_wide_data;

type _IO_lock_t = std::ffi::c_void;

extern "C" {
    static stdin: *mut FILE;
    static stdout: *mut FILE;
    static stderr: *mut FILE;
}

struct UT_string {
    d: *mut i8,
    n: usize,
    i: usize,
}

#[no_mangle]
pub unsafe extern "C" fn malloc(size: usize) -> *mut std::ffi::c_void {
    let layout = Layout::from_size(size, 1).unwrap();
    let ptr = alloc(layout);
    ptr as *mut std::ffi::c_void
}

#[no_mangle]
pub unsafe extern "C" fn free(ptr: *mut std::ffi::c_void) {
    dealloc(ptr as *mut u8, Layout::from_size_align(1, 1).unwrap());
}

#[no_mangle]
pub unsafe extern "C" fn utstring_find(
    s: *mut UT_string,
    P_StartPosition: i64,
    P_Needle: *const i8,
    P_NeedleLen: usize,
) -> i64 {
    let mut V_StartPosition: i64;
    let mut V_HaystackLen: i64;
    let mut V_KMP_Table: *mut i64;
    let mut V_FindPosition = -1;
    if P_StartPosition < 0 {
        V_StartPosition = (*s).i as i64 + P_StartPosition;
    } else {
        V_StartPosition = P_StartPosition;
    }
    V_HaystackLen = (*s).i as i64 - V_StartPosition;
    if V_HaystackLen >= P_NeedleLen as i64 && P_NeedleLen > 0 {
        V_KMP_Table = malloc(std::mem::size_of::<i64>() * (P_NeedleLen + 1)) as *mut i64;
        if !V_KMP_Table.is_null() {
            _utstring_BuildTable(P_Needle, P_NeedleLen, V_KMP_Table);
            V_FindPosition = _utstring_find(
                (*s).d.offset(V_StartPosition as isize),
                V_HaystackLen as usize,
                P_Needle,
                P_NeedleLen,
                V_KMP_Table,
            );
            if V_FindPosition >= 0 {
                V_FindPosition += V_StartPosition;
            }
            free(V_KMP_Table as *mut std::ffi::c_void);
        }
    }
    V_FindPosition
}

unsafe fn _utstring_BuildTable(P_Needle: *const i8, P_NeedleLen: usize, V_KMP_Table: *mut i64) {
    // Implementation of _utstring_BuildTable
}

unsafe fn _utstring_find(
    _s: *const i8,
    _haystack_len: usize,
    _P_Needle: *const i8,
    _P_NeedleLen: usize,
    _V_KMP_Table: *mut i64,
) -> i64 {
    // Implementation of _utstring_find
    -1
}
