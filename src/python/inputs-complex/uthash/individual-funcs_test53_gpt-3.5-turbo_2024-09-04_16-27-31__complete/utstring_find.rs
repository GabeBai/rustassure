use std::os::raw::{c_char, c_long, c_void};

#[repr(C)]
pub struct _IO_FILE {
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
    _old_offset: c_long,
    _cur_column: u16,
    _vtable_offset: i8,
    _shortbuf: [i8; 1],
    _lock: *mut c_void,
    _offset: c_long,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut _IO_FILE,
    _freeres_buf: *mut c_void,
    __pad5: usize,
    _mode: i32,
    _unused2: [i8; 15 * std::mem::size_of::<i32>() - 4 * std::mem::size_of::<*mut c_void>() - std::mem::size_of::<usize>()],
}

#[repr(C)]
pub struct _IO_marker;

#[repr(C)]
pub struct _IO_codecvt;

#[repr(C)]
pub struct _IO_wide_data;

type _IO_lock_t = c_void;

extern {
    static stdin: *mut _IO_FILE;
    static stdout: *mut _IO_FILE;
    static stderr: *mut _IO_FILE;

    fn malloc(size: usize) -> *mut c_void;
    fn free(ptr: *mut c_void);

    fn _utstring_find(s: *const i8, V_HaystackLen: usize, P_Needle: *const i8, P_NeedleLen: usize, V_KMP_Table: *mut c_long) -> c_long;
}

#[repr(C)]
pub struct UT_string {
    d: *mut c_char,
    n: usize,
    i: usize,
}

#[no_mangle]
pub unsafe extern "C" fn utstring_find(
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

    V_HaystackLen = (*s).i as c_long - V_StartPosition;

    if V_HaystackLen >= P_NeedleLen as c_long && P_NeedleLen > 0 {
        V_KMP_Table = malloc(std::mem::size_of::<c_long>() * (P_NeedleLen + 1)) as *mut c_long;

        if !V_KMP_Table.is_null() {
            // _utstring_BuildTable(P_Needle, P_NeedleLen, V_KMP_Table);
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

            free(V_KMP_Table as *mut c_void);
        }
    }

    V_FindPosition
}
