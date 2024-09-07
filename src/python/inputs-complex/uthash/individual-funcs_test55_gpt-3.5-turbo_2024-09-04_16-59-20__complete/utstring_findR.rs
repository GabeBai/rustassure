use std::mem;

#[repr(C)]
struct _IO_FILE {
    _flags: i32,
    _IO_read_ptr: *mut i8,
    _IO_read_end: *mut i8,
    _IO_read_base: *mut i8,
    _IO_write_base: *mut i8,
    _IO_write_ptr: *mut i8,
    _IO_write_end: *mut i8,
    _IO_buf_base: *mut i8,
    _IO_buf_end: *mut i8,
    _IO_save_base: *mut i8,
    _IO_backup_base: *mut i8,
    _IO_save_end: *mut i8,
    _markers: *mut _IO_marker,
    _chain: *mut _IO_FILE,
    _fileno: i32,
    _flags2: i32,
    _old_offset: __off_t,
    _cur_column: u16,
    _vtable_offset: i8,
    _shortbuf: [i8; 1],
    _lock: *mut _IO_lock_t,
    _offset: __off64_t,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut _IO_FILE,
    _freeres_buf: *mut std::ffi::c_void,
    __pad5: usize,
    _mode: i32,
    _unused2: [i32; 15],
}

type FILE = *mut _IO_FILE;

static mut stdin: FILE = std::ptr::null_mut();
static mut stdout: FILE = std::ptr::null_mut();
static mut stderr: FILE = std::ptr::null_mut();

#[repr(C)]
union pthread_attr_t {
    __size: [i8; 56],
    __align: i64,
}

#[repr(C)]
struct UT_string {
    d: *mut i8,
    n: usize,
    i: usize,
}

#[no_mangle]
pub extern "C" fn malloc(size: usize) -> *mut std::ffi::c_void {
    unsafe { libc::malloc(size) as *mut std::ffi::c_void }
}

#[no_mangle]
pub extern "C" fn free(ptr: *mut std::ffi::c_void) {
    unsafe { libc::free(ptr as *mut std::ffi::c_void) }
}

#[no_mangle]
pub extern "C" fn utstring_findR(
    s: *mut UT_string,
    P_StartPosition: i64,
    P_Needle: *const i8,
    P_NeedleLen: usize,
) -> i64 {
    let mut V_StartPosition: i64;
    let mut V_HaystackLen: i64;
    let mut V_KMP_Table: *mut i64;
    let mut V_FindPosition: i64 = -1;

    if P_StartPosition < 0 {
        V_StartPosition = (*s).i as i64 + P_StartPosition;
    } else {
        V_StartPosition = P_StartPosition;
    }

    V_HaystackLen = V_StartPosition + 1;

    if V_HaystackLen >= P_NeedleLen as i64 && P_NeedleLen > 0 {
        V_KMP_Table = malloc(mem::size_of::<i64>() * (P_NeedleLen + 1)) as *mut i64;
        if !V_KMP_Table.is_null() {
            _utstring_BuildTableR(P_Needle, P_NeedleLen, V_KMP_Table);
            V_FindPosition = _utstring_findR((*s).d,
                                             V_HaystackLen as usize,
                                             P_Needle,
                                             P_NeedleLen,
                                             V_KMP_Table);
            free(V_KMP_Table as *mut std::ffi::c_void);
        }
    }

    V_FindPosition
}

fn _utstring_BuildTableR(P_Needle: *const i8, P_NeedleLen: usize, V_KMP_Table: *mut i64) {
    // Implementation of _utstring_BuildTableR function
}

fn _utstring_findR(
    s: *const i8,
    V_HaystackLen: usize,
    P_Needle: *const i8,
    P_NeedleLen: usize,
    V_KMP_Table: *const i64,
) -> i64 {
    // Implementation of _utstring_findR function
}
