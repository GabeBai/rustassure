use std::os::raw::{c_char, c_long};

struct FILE {
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
    _old_offset: c_long,
    _cur_column: u16,
    _vtable_offset: i8,
    _shortbuf: [c_char; 1],
    _lock: *mut _IO_lock_t,
    _offset: c_long,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut FILE,
    _freeres_buf: *mut std::ffi::c_void,
    __pad5: usize,
    _mode: i32,
    _unused2: [i32; 15],
}

extern "C" {
    static stdin: *mut FILE;
    static stdout: *mut FILE;
    static stderr: *mut FILE;
}

union pthread_attr_t {
    __size: [c_char; 56],
    __align: c_long,
}

#[no_mangle]
pub extern "C" fn _utstring_BuildTable(
    P_Needle: *const c_char,
    P_NeedleLen: usize,
    P_KMP_Table: *mut c_long,
) {
    let mut i: c_long = 0;
    let mut j: c_long = i - 1;
    unsafe {
        *P_KMP_Table.offset(i) = j;
    }
    while i < P_NeedleLen as c_long {
        while j > -1 && *P_Needle.offset(i) != *P_Needle.offset(j) {
            j = unsafe { *P_KMP_Table.offset(j) };
        }
        i += 1;
        j += 1;
        if i < P_NeedleLen as c_long {
            if *P_Needle.offset(i) == *P_Needle.offset(j) {
                unsafe {
                    *P_KMP_Table.offset(i) = *P_KMP_Table.offset(j);
                }
            } else {
                unsafe {
                    *P_KMP_Table.offset(i) = j;
                }
            }
        } else {
            unsafe {
                *P_KMP_Table.offset(i) = j;
            }
        }
    }
}
