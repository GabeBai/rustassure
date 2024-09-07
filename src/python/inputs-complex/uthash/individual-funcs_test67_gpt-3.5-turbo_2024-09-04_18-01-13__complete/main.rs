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
    // Implementation of utarray_str_cpy
}

fn utarray_str_dtor(elt: *mut std::ffi::c_void) {
    // Implementation of utarray_str_dtor
}

fn main() {
    let mut nums: *mut UT_array;
    let mut i: i32;
    let mut p: *mut i32;

    unsafe {
        nums = malloc(mem::size_of::<UT_array>()) as *mut UT_array;
        if nums.is_null() {
            exit(-1);
        }
        memset(nums as *mut std::ffi::c_void, 0, mem::size_of::<UT_array>());
        (*nums).icd = ut_int_icd;

        for i in 0..10 {
            if (*nums).i + 1 > (*nums).n {
                let mut utarray_tmp: *mut i8;
                while (*nums).i + 1 > (*nums).n {
                    (*nums).n = if (*nums).n != 0 { 2 * (*nums).n } else { 8 };
                }
                utarray_tmp = realloc((*nums).d as *mut std::ffi::c_void, (*nums).n * (*nums).icd.sz) as *mut i8;
                if utarray_tmp.is_null() {
                    exit(-1);
                }
                (*nums).d = utarray_tmp;
            }
            if let Some(copy_fn) = (*nums).icd.copy {
                copy_fn((*nums).d.offset((*nums).icd.sz as isize * (*nums).i) as *mut std::ffi::c_void, &i as *const i32 as *const std::ffi::c_void);
            } else {
                memcpy((*nums).d.offset((*nums).icd.sz as isize * (*nums).i) as *mut std::ffi::c_void, &i as *const i32 as *const std::ffi::c_void, (*nums).icd.sz);
            }
            (*nums).i += 1;
        }

        p = if (*nums).i != 0 {
            (*nums).d.offset((*nums).icd.sz as isize * ((*nums).i - 1)) as *mut i32
        } else {
            ptr::null_mut()
        };

        while !p.is_null() {
            printf("%d\n\0".as_ptr() as *const i8, *p);
            p = if p.is_null() {
                if (*nums).i != 0 {
                    (*nums).d.offset((*nums).icd.sz as isize * ((*nums).i - 1)) as *mut i32
                } else {
                    ptr::null_mut()
                }
            } else {
                if ((p as usize - (*nums).d as usize) / (*nums).icd.sz) != 0 {
                    (*nums).d.offset((*nums).icd.sz as isize * (((p as usize - (*nums).d as usize) / (*nums).icd.sz) - 1)) as *mut i32
                } else {
                    ptr::null_mut()
                }
            };
        }

        p = ptr::null_mut();
        while {
            p = if p.is_null() {
                if (*nums).i != 0 {
                    (*nums).d.offset((*nums).icd.sz as isize * ((*nums).i - 1)) as *mut i32
                } else {
                    ptr::null_mut()
                }
            } else {
                if ((p as usize - (*nums).d as usize) / (*nums).icd.sz) != 0 {
                    (*nums).d.offset((*nums).icd.sz as isize * (((p as usize - (*nums).d as usize) / (*nums).icd.sz) - 1)) as *mut i32
                } else {
                    ptr::null_mut()
                }
            };
            !p.is_null()
        } {
            printf("%d\n\0".as_ptr() as *const i8, *p);
        }

        if (*nums).n != 0 {
            if let Some(dtor_fn) = (*nums).icd.dtor {
                for ut_i in 0..(*nums).i {
                    dtor_fn(if ut_i < (*nums).i {
                        (*nums).d.offset((*nums).icd.sz as isize * ut_i) as *mut std::ffi::c_void
                    } else {
                        ptr::null_mut()
                    });
                }
            }
            free((*nums).d as *mut std::ffi::c_void);
        }
        (*nums).n = 0;
        free(nums as *mut std::ffi::c_void);
    }
}
