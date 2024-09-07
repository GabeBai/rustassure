use std::os::raw::{c_char, c_long, c_void};

#[repr(C)]
pub struct _IO_FILE {
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
    _old_offset: c_long,
    _cur_column: u16,
    _vtable_offset: i8,
    _shortbuf: [c_char; 1],
    _lock: *mut _IO_lock_t,
    _offset: c_long,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut _IO_FILE,
    _freeres_buf: *mut c_void,
    __pad5: usize,
    _mode: i32,
    _unused2: [i32; 15],
}

pub struct UT_string {
    d: *mut c_char,
    n: usize,
    i: usize,
}

#[no_mangle]
pub extern "C" fn malloc(size: usize) -> *mut c_void;

#[no_mangle]
pub extern "C" fn free(ptr: *mut c_void);

#[no_mangle]
pub extern "C" fn utstring_findR(
    s: *mut UT_string,
    P_StartPosition: c_long,
    P_Needle: *const c_char,
    P_NeedleLen: usize,
) -> c_long {
    let mut V_StartPosition: c_long;
    let mut V_HaystackLen: c_long;
    let mut V_KMP_Table: *mut c_long;
    let mut V_FindPosition: c_long = -1;

    if P_StartPosition < 0 {
        V_StartPosition = (*s).i as c_long + P_StartPosition;
    } else {
        V_StartPosition = P_StartPosition;
    }

    V_HaystackLen = V_StartPosition + 1;

    if V_HaystackLen >= P_NeedleLen as c_long && P_NeedleLen > 0 {
        V_KMP_Table = unsafe { malloc(std::mem::size_of::<c_long>() * (P_NeedleLen + 1)) as *mut c_long };

        if !V_KMP_Table.is_null() {
            _utstring_BuildTableR(P_Needle, P_NeedleLen, V_KMP_Table);
            V_FindPosition = _utstring_findR((*s).d,
                                             V_HaystackLen,
                                             P_Needle,
                                             P_NeedleLen,
                                             V_KMP_Table);
            unsafe { free(V_KMP_Table as *mut c_void) };
        }
    }

    V_FindPosition
}

fn _utstring_BuildTableR(P_Needle: *const c_char, P_NeedleLen: usize, V_KMP_Table: *mut c_long) {
    // Implementation of _utstring_BuildTableR function
}

fn _utstring_findR(
    s: *const c_char,
    V_HaystackLen: c_long,
    P_Needle: *const c_char,
    P_NeedleLen: usize,
    V_KMP_Table: *const c_long,
) -> c_long {
    // Implementation of _utstring_findR function
    -1
}
