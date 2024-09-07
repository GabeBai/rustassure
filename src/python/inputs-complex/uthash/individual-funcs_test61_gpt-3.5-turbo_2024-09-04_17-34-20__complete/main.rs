use std::os::raw::{c_void, c_char};
use std::mem::{size_of, zeroed};
use std::ptr::{null, null_mut};
use std::ffi::CString;

struct _IO_FILE {
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
    _old_offset: __off_t,
    _cur_column: u16,
    _vtable_offset: i8,
    _shortbuf: [c_char; 1],
    _lock: *mut _IO_lock_t,
    _offset: __off64_t,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut _IO_FILE,
    _freeres_buf: *mut c_void,
    __pad5: usize,
    _mode: i32,
    _unused2: [i32; 15],
}

struct _IO_marker;

struct _IO_codecvt;

struct _IO_wide_data;

type _IO_lock_t = c_void;

type __off_t = i32;

type __off64_t = i32;

extern {
    static mut stdin: *mut FILE;
    static mut stdout: *mut FILE;
    static mut stderr: *mut FILE;

    fn printf(format: *const c_char, ...) -> i32;
    fn memcpy(dest: *mut c_void, src: *const c_void, n: usize) -> *mut c_void;
    fn memset(s: *mut c_void, c: i32, n: usize) -> *mut c_void;
    fn strstr(haystack: *const c_char, needle: *const c_char) -> *mut c_char;
    fn malloc(size: usize) -> *mut c_void;
    fn realloc(ptr: *mut c_void, size: usize) -> *mut c_void;
    fn free(ptr: *mut c_void);
    fn exit(status: i32) -> !;
    fn bsearch(key: *const c_void, base: *const c_void, nmemb: usize, size: usize, compar: extern "C" fn(*const c_void, *const c_void) -> i32) -> *mut c_void;
    fn qsort(base: *mut c_void, nmemb: usize, size: usize, compar: extern "C" fn(*const c_void, *const c_void) -> i32);
}

type __compar_fn_t = extern "C" fn(*const c_void, *const c_void) -> i32;

type ctor_f = extern "C" fn(*mut c_void, *const c_void);
type dtor_f = extern "C" fn(*mut c_void);
type init_f = extern "C" fn(*mut c_void);

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
    d: *mut c_char,
}

unsafe extern "C" fn strsort(a: *const c_void, b: *const c_void) -> i32 {
    let a = *(a as *const *const c_char);
    let b = *(b as *const *const c_char);
    CString::new(a).unwrap().cmp(&CString::new(b).unwrap())
}

static ut_str_icd: UT_icd = UT_icd {
    sz: size_of::<*const c_char>(),
    init: None,
    copy: Some(utarray_str_cpy),
    dtor: Some(utarray_str_dtor),
};

static ut_int_icd: UT_icd = UT_icd {
    sz: size_of::<i32>(),
    init: None,
    copy: None,
    dtor: None,
};

static ut_ptr_icd: UT_icd = UT_icd {
    sz: size_of::<*const c_void>(),
    init: None,
    copy: None,
    dtor: None,
};

unsafe fn utarray_str_cpy(dst: *mut c_void, src: *const c_void) {
    let dst = dst as *mut *const c_char;
    let src = src as *const *const c_char;
    *dst = *src;
}

unsafe fn utarray_str_dtor(elt: *mut c_void) {
    let elt = elt as *mut *const c_char;
    free(*elt as *mut c_void);
}

fn main() {
    let mut strs: *mut UT_array = null_mut();
    let s: *const c_char;
    let mut p: *const *const c_char = null();

    unsafe {
        strs = malloc(size_of::<UT_array>()) as *mut UT_array;
        if strs.is_null() {
            exit(-1);
        }
        memset(strs as *mut c_void, 0, size_of::<UT_array>());
        (*strs).icd = ut_str_icd;

        s = b"hello\0".as_ptr() as *const c_char;
        add_string_to_array(&mut strs, s);

        s = b"world\0".as_ptr() as *const c_char;
        add_string_to_array(&mut strs, s);

        s = b"one\0".as_ptr() as *const c_char;
        add_string_to_array(&mut strs, s);

        s = b"two\0".as_ptr() as *const c_char;
        add_string_to_array(&mut strs, s);

        s = b"three\0".as_ptr() as *const c_char;
        add_string_to_array(&mut strs, s);

        p = null();
        while let Some(ptr) = get_next_string(&strs, p) {
            let s = CString::from_raw(ptr as *mut i8);
            printf("%s\n\0".as_ptr() as *const c_char, s.to_str().unwrap().as_ptr() as *const c_char);
            p = ptr;
        }

        printf("sorting\n\0".as_ptr() as *const c_char);

        qsort((*strs).d as *mut c_void, (*strs).i as usize, (*strs).icd.sz, strsort);

        p = null();
        while let Some(ptr) = get_next_string(&strs, p) {
            let s = CString::from_raw(ptr as *mut i8);
            printf("finding %s\n\0".as_ptr() as *const c_char, s.to_str().unwrap().as_ptr() as *const c_char);
            p = bsearch(&ptr as *const *const c_char as *const c_void, (*strs).d as *const c_void, (*strs).i as usize, (*strs).icd.sz, strsort) as *const *const c_char;
            printf(" %s\n\0".as_ptr() as *const c_char, if p.is_null() { b"failed\0".as_ptr() as *const c_char } else { *p });
        }

        free_array(&mut strs);
    }
}

unsafe fn add_string_to_array(strs: &mut *mut UT_array, s: *const c_char) {
    if (*strs).is_null() {
        exit(-1);
    }

    if (*strs).as_ref().unwrap().i + 1 > (*strs).as_ref().unwrap().n {
        let mut utarray_tmp: *mut c_char;
        while (*strs).as_ref().unwrap().i + 1 > (*strs).as_ref().unwrap().n {
            (*strs).as_mut().unwrap().n = if (*strs).as_ref().unwrap().n != 0 { 2 * (*strs).as_ref().unwrap().n } else { 8 };
        }
        utarray_tmp = realloc((*strs).as_ref().unwrap().d as *mut c_void, (*strs).as_ref().unwrap().n * (*strs).as_ref().unwrap().icd.sz) as *mut c_char;
        if utarray_tmp.is_null() {
            exit(-1);
        }
        (*strs).as_mut().unwrap().d = utarray_tmp;
    }

    if let Some(copy_fn) = (*strs).as_ref().unwrap().icd.copy {
        copy_fn((*strs).as_ref().unwrap().d.offset((*strs).as_ref().unwrap().icd.sz as isize * (*strs).as_ref().unwrap().i as isize) as *mut c_void, &s as *const *const c_char as *const c_void);
    } else {
        memcpy((*strs).as_ref().unwrap().d.offset((*strs).as_ref().unwrap().icd.sz as isize * (*strs).as_ref().unwrap().i as isize) as *mut c_void, &s as *const *const c_char as *const c_void, (*strs).as_ref().unwrap().icd.sz);
    }

    (*strs).as_mut().unwrap().i += 1;
}

unsafe fn get_next_string(strs: &*mut UT_array, prev: *const *const c_char) -> Option<*const c_char> {
    if prev.is_null() {
        if (*strs).is_null() || (*strs).as_ref().unwrap().i == 0 {
            return None;
        }
        Some((*strs).as_ref().unwrap().d as *const *const c_char)
    } else {
        let index = ((*strs).as_ref().unwrap().d.offset(0) as usize - prev as usize) / (*strs).as_ref().unwrap().icd.sz;
        if index + 1 < (*strs).as_ref().unwrap().i as usize {
            Some((*strs).as_ref().unwrap().d.offset((*strs).as_ref().unwrap().icd.sz as isize * (index + 1) as isize) as *const *const c_char)
        } else {
            None
        }
    }
}

unsafe fn free_array(strs: &mut *mut UT_array) {
    if !(*strs).is_null() {
        if let Some(dtor_fn) = (*strs).as_ref().unwrap().icd.dtor {
            for i in 0..(*strs).as_ref().unwrap().i {
                dtor_fn((*strs).as_ref().unwrap().d.offset((*strs).as_ref().unwrap().icd.sz as isize * i as isize) as *mut c_void);
            }
        }
        free((*strs).as_ref().unwrap().d as *mut c_void);
        (*strs).as_mut().unwrap().n = 0;
        free(*strs as *mut c_void);
    }
}
