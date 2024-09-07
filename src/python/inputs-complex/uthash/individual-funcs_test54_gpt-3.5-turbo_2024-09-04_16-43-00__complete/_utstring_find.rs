use std::os::raw::{c_char, c_long, c_ulong};

#[repr(C)]
pub struct FILE {
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
    _chain: *mut FILE,
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
    _freeres_list: *mut FILE,
    _freeres_buf: *mut std::ffi::c_void,
    __pad5: usize,
    _mode: i32,
    _unused2: [i32; 15],
}

#[repr(C)]
pub struct _IO_marker;

#[repr(C)]
pub struct _IO_codecvt;

#[repr(C)]
pub struct _IO_wide_data;

pub type _IO_lock_t = std::ffi::c_void;

pub type __off_t = c_long;
pub type __off64_t = c_long;

extern "C" {
    static stdin: *mut FILE;
    static stdout: *mut FILE;
    static stderr: *mut FILE;
}

#[no_mangle]
pub unsafe extern "C" fn _utstring_find(
    P_Haystack: *const c_char,
    P_HaystackLen: usize,
    P_Needle: *const c_char,
    P_NeedleLen: usize,
    P_KMP_Table: *mut c_long,
) -> c_long {
    let mut i: c_long = 0;
    let mut j: c_long = 0;
    let mut V_FindPosition: c_long = -1;
    i = 0;
    j = 0;
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
