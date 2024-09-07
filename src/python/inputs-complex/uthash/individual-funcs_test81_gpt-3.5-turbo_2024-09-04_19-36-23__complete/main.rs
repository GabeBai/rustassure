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

type __off_t = i32;

type __off64_t = i32;

type FILE = _IO_FILE;

#[link(name = "c")]
extern "C" {
    static stdin: *mut FILE;
    static stdout: *mut FILE;
    static stderr: *mut FILE;

    fn printf(format: *const i8, ...) -> i32;
    fn memcpy(dest: *mut std::ffi::c_void, src: *const std::ffi::c_void, n: usize) -> *mut std::ffi::c_void;
    fn memmove(dest: *mut std::ffi::c_void, src: *const std::ffi::c_void, n: usize) -> *mut std::ffi::c_void;
    fn memset(s: *mut std::ffi::c_void, c: i32, n: usize) -> *mut std::ffi::c_void;

    fn malloc(size: usize) -> *mut std::ffi::c_void;
    fn realloc(ptr: *mut std::ffi::c_void, size: usize) -> *mut std::ffi::c_void;
    fn free(ptr: *mut std::ffi::c_void);
    fn exit(status: i32) -> !;
}

type ctor_f = fn(*mut std::ffi::c_void, *const std::ffi::c_void);
type dtor_f = fn(*mut std::ffi::c_void);
type init_f = fn(*mut std::ffi::c_void);

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
    sz: std::mem::size_of::<*mut i8>(),
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
    // Implementation for utarray_str_cpy
}

fn utarray_str_dtor(elt: *mut std::ffi::c_void) {
    // Implementation for utarray_str_dtor
}

fn main() {
    let mut a: *mut UT_array;
    let mut i: i32;
    let mut p: *mut i32;

    unsafe {
        a = malloc(std::mem::size_of::<UT_array>()) as *mut UT_array;
        if a.is_null() {
            exit(-1);
        }
        memset(a as *mut std::ffi::c_void, 0, std::mem::size_of::<UT_array>());
        (*a).icd = ut_int_icd;

        for i in 0..10 {
            if (*a).i + 1 > (*a).n {
                let mut utarray_tmp: *mut i8;
                while (*a).i + 1 > (*a).n {
                    (*a).n = if (*a).n != 0 { 2 * (*a).n } else { 8 };
                }
                utarray_tmp = realloc((*a).d, (*a).n * (*a).icd.sz) as *mut i8;
                if utarray_tmp.is_null() {
                    exit(-1);
                }
                (*a).d = utarray_tmp;
            }
            if let Some(copy_fn) = (*a).icd.copy {
                copy_fn((*a).d.offset((*a).icd.sz as isize * (*a).i as isize), &i as *const i32 as *const std::ffi::c_void);
            } else {
                memcpy((*a).d.offset((*a).icd.sz as isize * (*a).i as isize), &i as *const i32 as *const std::ffi::c_void, (*a).icd.sz);
            }
            (*a).i += 1;
        }

        p = if (*a).i != 0 {
            (*a).d.offset(0)
        } else {
            ptr::null_mut()
        };
        while !p.is_null() {
            printf("%d ", *p);
            p = if p.is_null() {
                if (*a).i != 0 {
                    (*a).d.offset(0)
                } else {
                    ptr::null_mut()
                }
            } else {
                let index = ((p as usize - (*a).d as usize) / (*a).icd.sz) + 1;
                if (*a).i != index {
                    (*a).d.offset((*a).icd.sz as isize * index as isize)
                } else {
                    ptr::null_mut()
                }
            };
        }
        printf("\nlen: %u\n\n", (*a).i);

        i = 10;
        if 10 > (*a).i {
            let mut _ut_i: u32;
            if (*a).i > 10 {
                if let Some(dtor_fn) = (*a).icd.dtor {
                    for _ut_i in 10..(*a).i {
                        dtor_fn((*a).d.offset((*a).icd.sz as isize * _ut_i as isize));
                    }
                }
            } else if (*a).i < 10 {
                if (*a).i + (10 - (*a).i) > (*a).n {
                    let mut utarray_tmp: *mut i8;
                    while (*a).i + (10 - (*a).i) > (*a).n {
                        (*a).n = if (*a).n != 0 { 2 * (*a).n } else { 8 };
                    }
                    utarray_tmp = realloc((*a).d, (*a).n * (*a).icd.sz) as *mut i8;
                    if utarray_tmp.is_null() {
                        exit(-1);
                    }
                    (*a).d = utarray_tmp;
                }
                if let Some(init_fn) = (*a).icd.init {
                    for _ut_i in (*a).i..10 {
                        init_fn((*a).d.offset((*a).icd.sz as isize * _ut_i as isize));
                    }
                } else {
                    memset((*a).d.offset((*a).icd.sz as isize * (*a).i as isize), 0, (*a).icd.sz * (10 - (*a).i));
                }
            }
            (*a).i = 10;

            if (*a).i + 1 > (*a).n {
                let mut utarray_tmp: *mut i8;
                while (*a).i + 1 > (*a).n {
                    (*a).n = if (*a).n != 0 { 2 * (*a).n } else { 8 };
                }
                utarray_tmp = realloc((*a).d, (*a).n * (*a).icd.sz) as *mut i8;
                if utarray_tmp.is_null() {
                    exit(-1);
                }
                (*a).d = utarray_tmp;
            }

            if 10 < (*a).i {
                memmove(
                    (*a).d.offset((*a).icd.sz as isize * (10 + 1) as isize),
                    (*a).d.offset((*a).icd.sz as isize * 10 as isize),
                    ((*a).i - 10) * (*a).icd.sz,
                );
            }

            if let Some(copy_fn) = (*a).icd.copy {
                copy_fn((*a).d.offset((*a).icd.sz as isize * 10), &i as *const i32 as *const std::ffi::c_void);
            } else {
                memcpy((*a).d.offset((*a).icd.sz as isize * 10), &i as *const i32 as *const std::ffi::c_void, (*a).icd.sz);
            }
            (*a).i += 1;
        }

        while let Some(p) = if p.is_null() {
            if (*a).i != 0 {
                (*a).d.offset(0)
            } else {
                ptr::null_mut()
            }
        } else {
            let index = ((p as usize - (*a).d as usize) / (*a).icd.sz) + 1;
            if (*a).i != index {
                (*a).d.offset((*a).icd.sz as isize * index as isize)
            } else {
                ptr::null_mut()
            }
        } {
            printf("%d ", *p);
        }
        printf("\nlen: %u\n\n", (*a).i);

        if (*a).n != 0 {
            if let Some(dtor_fn) = (*a).icd.dtor {
                for _ut_i in 0..(*a).i {
                    dtor_fn(if _ut_i < (*a).i {
                        (*a).d.offset((*a).icd.sz as isize * _ut_i as isize)
                    } else {
                        ptr::null_mut()
                    });
                }
            }
            free((*a).d as *mut std::ffi::c_void);
        }
        free(a as *mut std::ffi::c_void);
    }
}
