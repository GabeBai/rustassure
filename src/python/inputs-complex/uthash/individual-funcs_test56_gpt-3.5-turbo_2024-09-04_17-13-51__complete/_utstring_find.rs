use std::os::raw::{c_char, c_long, c_ulong};

#[repr(C)]
pub struct _IO_marker {
    // define _IO_marker fields here
}

#[repr(C)]
pub struct _IO_codecvt {
    // define _IO_codecvt fields here
}

#[repr(C)]
pub struct _IO_wide_data {
    // define _IO_wide_data fields here
}

pub type _IO_lock_t = ();

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
    _freeres_buf: *mut std::ffi::c_void,
    __pad5: usize,
    _mode: i32,
    _unused2: [i32; 15],
}

pub static mut stdin: *mut _IO_FILE = std::ptr::null_mut();
pub static mut stdout: *mut _IO_FILE = std::ptr::null_mut();
pub static mut stderr: *mut _IO_FILE = std::ptr::null_mut();

#[no_mangle]
pub extern "C" fn _utstring_find(
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
        while i > -1 && unsafe { *P_Needle.offset(i as isize) } != unsafe { *P_Haystack.offset(j as isize) } {
            i = unsafe { *P_KMP_Table.offset(i as isize) };
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
