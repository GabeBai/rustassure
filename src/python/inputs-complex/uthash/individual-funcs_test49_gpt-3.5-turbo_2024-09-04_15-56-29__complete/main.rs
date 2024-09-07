use std::mem;
use std::ptr;

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

struct _IO_marker;

struct _IO_codecvt;

struct _IO_wide_data;

type _IO_lock_t = std::ffi::c_void;

type FILE = _IO_FILE;

extern {
    static stdin: *mut FILE;
    static stdout: *mut FILE;
    static stderr: *mut FILE;

    fn printf(format: *const i8, ...) -> i32;
    fn memcpy(dest: *mut std::ffi::c_void, src: *const std::ffi::c_void, n: usize) -> *mut std::ffi::c_void;
    fn memset(s: *mut std::ffi::c_void, c: i32, n: usize) -> *mut std::ffi::c_void;

    fn malloc(size: usize) -> *mut std::ffi::c_void;
    fn realloc(ptr: *mut std::ffi::c_void, size: usize) -> *mut std::ffi::c_void;
    fn free(ptr: *mut std::ffi::c_void);
    fn exit(status: i32) -> !;
}

type ctor_f = extern "C" fn(dst: *mut std::ffi::c_void, src: *const std::ffi::c_void);
type dtor_f = extern "C" fn(elt: *mut std::ffi::c_void);
type init_f = extern "C" fn(elt: *mut std::ffi::c_void);

struct UT_icd {
    sz: usize,
    init: Option<init_f>,
    copy: Option<ctor_f>,
    dtor: Option<dtor_f>,
}

struct UT_array {
    i: u32,
    n: u32,
    icd: UT_icd,
    d: *mut i8,
}

const ut_str_icd: UT_icd = UT_icd {
    sz: std::mem::size_of::<*const i8>(),
    init: None,
    copy: Some(utarray_str_cpy),
    dtor: Some(utarray_str_dtor),
};

const ut_int_icd: UT_icd = UT_icd {
    sz: std::mem::size_of::<i32>(),
    init: None,
    copy: None,
    dtor: None,
};

const ut_ptr_icd: UT_icd = UT_icd {
    sz: std::mem::size_of::<*mut std::ffi::c_void>(),
    init: None,
    copy: None,
    dtor: None,
};

fn utarray_str_cpy(dst: *mut std::ffi::c_void, src: *const std::ffi::c_void) {
    unsafe {
        let dst_ptr = dst as *mut *const i8;
        let src_ptr = src as *const *const i8;
        *dst_ptr = **src_ptr;
    }
}

fn utarray_str_dtor(elt: *mut std::ffi::c_void) {
    // No need to do anything for string destructor
}

fn main() {
    let mut strs: *mut UT_array;
    let s: *const i8;
    let mut p: *const *const i8;

    unsafe {
        strs = malloc(mem::size_of::<UT_array>()) as *mut UT_array;
        if strs.is_null() {
            exit(-1);
        }
        memset(strs as *mut std::ffi::c_void, 0, mem::size_of::<UT_array>());

        (*strs).icd = ut_str_icd;

        s = b"hello\0".as_ptr() as *const i8;
        utarray_add(strs, s);

        s = b"world\0".as_ptr() as *const i8;
        utarray_add(strs, s);

        p = std::ptr::null();
        while let Some(ptr) = utarray_next(strs, p) {
            printf(b"%s\n\0".as_ptr() as *const i8, *ptr);
            p = ptr;
        }

        utarray_done(strs);
    }
}

fn utarray_add(strs: *mut UT_array, s: *const i8) {
    unsafe {
        if (*strs).i + 1 > (*strs).n {
            let mut utarray_tmp: *mut i8;
            while (*strs).i + 1 > (*strs).n {
                (*strs).n = if (*strs).n != 0 { 2 * (*strs).n } else { 8 };
            }
            utarray_tmp = realloc((*strs).d as *mut std::ffi::c_void, (*strs).n * (*strs).icd.sz) as *mut i8;
            if utarray_tmp.is_null() {
                exit(-1);
            }
            (*strs).d = utarray_tmp;
        }

        if let Some(copy_fn) = (*strs).icd.copy {
            copy_fn((*strs).d.offset((*strs).icd.sz as isize * (*strs).i), s as *const std::ffi::c_void);
        } else {
            memcpy((*strs).d.offset((*strs).icd.sz as isize * (*strs).i) as *mut std::ffi::c_void, s as *const std::ffi::c_void, (*strs).icd.sz);
        }

        (*strs).i += 1;
    }
}

fn utarray_next(strs: *mut UT_array, p: *const *const i8) -> Option<*const i8> {
    unsafe {
        if p.is_null() {
            if (*strs).i > 0 {
                Some((*strs).d as *const *const i8)
            } else {
                None
            }
        } else {
            let index = ((*p as usize - (*strs).d as usize) / (*strs).icd.sz) + 1;
            if (*strs).i != index {
                Some((*strs).d.offset((*strs).icd.sz as isize * index) as *const *const i8)
            } else {
                None
            }
        }
    }
}

fn utarray_done(strs: *mut UT_array) {
    unsafe {
        if (*strs).n != 0 {
            if let Some(dtor_fn) = (*strs).icd.dtor {
                for i in 0..(*strs).i {
                    dtor_fn((*strs).d.offset((*strs).icd.sz as isize * i) as *mut std::ffi::c_void);
                }
            }
            free((*strs).d as *mut std::ffi::c_void);
        }
        (*strs).n = 0;
        free(strs as *mut std::ffi::c_void);
    }
}
