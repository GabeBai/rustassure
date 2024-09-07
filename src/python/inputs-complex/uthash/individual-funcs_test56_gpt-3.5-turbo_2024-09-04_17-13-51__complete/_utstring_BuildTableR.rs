use std::os::raw::{c_char, c_long};

#[repr(C)]
pub struct FILE {
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
    _chain: *mut FILE,
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
    _freeres_list: *mut FILE,
    _freeres_buf: *mut c_void,
    __pad5: size_t,
    _mode: c_int,
    _unused2: [c_char; 15 * std::mem::size_of::<c_int>() - 4 * std::mem::size_of::<*mut c_void>() - std::mem::size_of::<size_t>()],
}

extern "C" {
    static mut stdin: *mut FILE;
    static mut stdout: *mut FILE;
    static mut stderr: *mut FILE;
}

#[no_mangle]
pub extern "C" fn _utstring_BuildTableR(P_Needle: *const c_char, P_NeedleLen: size_t, P_KMP_Table: *mut c_long) {
    let mut i: c_long = P_NeedleLen as c_long - 1;
    let mut j: c_long = i + 1;
    unsafe {
        *P_KMP_Table.offset(i as isize + 1) = j;
    }
    while i >= 0 {
        while j < P_NeedleLen as c_long && *P_Needle.offset(i) != *P_Needle.offset(j) {
            j = unsafe { *P_KMP_Table.offset(j as isize + 1) };
        }
        i -= 1;
        j -= 1;
        if i >= 0 {
            if *P_Needle.offset(i) == *P_Needle.offset(j) {
                unsafe {
                    *P_KMP_Table.offset(i as isize + 1) = *P_KMP_Table.offset(j as isize + 1);
                }
            } else {
                unsafe {
                    *P_KMP_Table.offset(i as isize + 1) = j;
                }
            }
        } else {
            unsafe {
                *P_KMP_Table.offset(i as isize + 1) = j;
            }
        }
    }
}
