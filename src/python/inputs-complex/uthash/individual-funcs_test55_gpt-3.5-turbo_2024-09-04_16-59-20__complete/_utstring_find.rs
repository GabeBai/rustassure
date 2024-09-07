use std::os::raw::{c_char, c_long, c_ulong};

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
    _shortbuf: [c_char; 1],
    _lock: *mut _IO_lock_t,
    _offset: __off64_t,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut _IO_FILE,
    _freeres_buf: *mut c_void,
    __pad5: size_t,
    _mode: c_int,
    _unused2: [c_char; 15 * std::mem::size_of::<c_int>() - 4 * std::mem::size_of::<*mut c_void>() - std::mem::size_of::<size_t>()],
}

extern "C" {
    static stdin: *mut _IO_FILE;
    static stdout: *mut _IO_FILE;
    static stderr: *mut _IO_FILE;
}

#[repr(C)]
pub union pthread_attr_t {
    __size: [c_char; 56],
    __align: c_long,
}

#[no_mangle]
pub extern "C" fn _utstring_find(
    P_Haystack: *const c_char,
    P_HaystackLen: size_t,
    P_Needle: *const c_char,
    P_NeedleLen: size_t,
    P_KMP_Table: *mut c_long,
) -> c_long {
    let mut i: c_long = 0;
    let mut j: c_long = 0;
    let mut V_FindPosition: c_long = -1;
    
    while j < P_HaystackLen as c_long && (P_HaystackLen as c_long - j) + i >= P_NeedleLen as c_long {
        while i > -1 && *P_Needle.offset(i) != *P_Haystack.offset(j) {
            i = *P_KMP_Table.offset(i);
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
