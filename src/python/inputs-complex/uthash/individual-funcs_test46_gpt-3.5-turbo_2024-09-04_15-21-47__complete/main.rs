use std::os::raw::{c_void, c_char};
use std::mem::{size_of, zeroed, transmute, copy};
use std::ptr::{null, null_mut};
use std::alloc::{alloc, realloc, dealloc, Layout};
use std::cmp::Ordering;

type size_t = usize;
type __off_t = isize;
type __off64_t = isize;

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
    __pad5: size_t,
    _mode: i32,
    _unused2: [i32; 15],
}

struct _IO_marker;

struct _IO_codecvt;

struct _IO_wide_data;

type _IO_lock_t = c_void;

extern "C" {
    static mut stdin: *mut FILE;
    static mut stdout: *mut FILE;
    static mut stderr: *mut FILE;

    fn printf(format: *const c_char, ...) -> i32;
    fn memcpy(dest: *mut c_void, src: *const c_void, n: size_t) -> *mut c_void;
    fn memmove(dest: *mut c_void, src: *const c_void, n: size_t) -> *mut c_void;
    fn memset(s: *mut c_void, c: i32, n: size_t) -> *mut c_void;
    fn strstr(haystack: *const c_char, needle: *const c_char) -> *mut c_char;
    fn malloc(size: size_t) -> *mut c_void;
    fn realloc(ptr: *mut c_void, size: size_t) -> *mut c_void;
    fn free(ptr: *mut c_void);
    fn exit(status: i32) -> !;
    fn qsort(base: *mut c_void, nmemb: size_t, size: size_t, compar: extern "C" fn(*const c_void, *const c_void) -> i32);
}

type __compar_fn_t = extern "C" fn(*const c_void, *const c_void) -> i32;

struct UT_icd {
    sz: size_t,
    init: Option<extern "C" fn(*mut c_void)>,
    copy: Option<extern "C" fn(*mut c_void, *const c_void)>,
    dtor: Option<extern "C" fn(*mut c_void)>,
}

struct UT_array {
    i: u32,
    n: u32,
    icd: UT_icd,
    d: *mut c_char,
}

const ut_str_icd: UT_icd = UT_icd {
    sz: size_of::<*mut c_char>(),
    init: None,
    copy: Some(utarray_str_cpy),
    dtor: Some(utarray_str_dtor),
};

const ut_int_icd: UT_icd = UT_icd {
    sz: size_of::<i32>(),
    init: None,
    copy: None,
    dtor: None,
};

const ut_ptr_icd: UT_icd = UT_icd {
    sz: size_of::<*mut c_void>(),
    init: None,
    copy: None,
    dtor: None,
};

fn main() {
    let mut strs: *mut UT_array = unsafe { malloc(size_of::<UT_array>()) as *mut UT_array };
    if strs.is_null() {
        unsafe { exit(-1) };
    }
    unsafe {
        let layout = Layout::from_size_align(size_of::<UT_array>(), 1).unwrap();
        let strs = strs as *mut UT_array;
        let icd = &ut_str_icd;
        let ptr = strs as *mut u8;
        zeroed(ptr, layout.size());
        (*strs).icd = *icd;
    }

    let s = "hello".as_ptr() as *mut c_char;
    unsafe { add_string_to_array(strs, s) };

    let s = "world".as_ptr() as *mut c_char;
    unsafe { add_string_to_array(strs, s) };

    let mut p: *mut *mut c_char = null_mut();
    while let Some(ptr) = get_next_string(strs, p) {
        unsafe {
            printf("%s ", *ptr);
        }
    }
    unsafe {
        printf("\n");
    }

    let s = "begin".as_ptr() as *mut c_char;
    unsafe { add_string_to_array_at_index(strs, s, 0) };

    while let Some(ptr) = get_next_string(strs, p) {
        unsafe {
            printf("%s ", *ptr);
        }
    }
    unsafe {
        printf("\n");
    }

    // Other operations...

    unsafe {
        free((*strs).d as *mut c_void);
        free(strs as *mut c_void);
    }
}

unsafe fn add_string_to_array(strs: *mut UT_array, s: *mut c_char) {
    let strs = &mut *strs;
    if strs.i + 1 > strs.n {
        let new_size = if strs.n != 0 { 2 * strs.n } else { 8 };
        let layout = Layout::from_size_align(new_size * strs.icd.sz, 1).unwrap();
        let new_ptr = realloc(strs.d as *mut c_void, layout.size()) as *mut c_char;
        if new_ptr.is_null() {
            exit(-1);
        }
        strs.d = new_ptr;
        strs.n = new_size;
    }

    if let Some(copy_fn) = strs.icd.copy {
        copy_fn(strs.d.offset((strs.i * strs.icd.sz) as isize), s as *const c_void);
    } else {
        copy(strs.d.offset((strs.i * strs.icd.sz) as isize), s as *const c_void, strs.icd.sz);
    }

    strs.i += 1;
}

unsafe fn add_string_to_array_at_index(strs: *mut UT_array, s: *mut c_char, index: u32) {
    let strs = &mut *strs;
    if strs.i + 1 > strs.n {
        let new_size = if strs.n != 0 { 2 * strs.n } else { 8 };
        let layout = Layout::from_size_align(new_size * strs.icd.sz, 1).unwrap();
        let new_ptr = realloc(strs.d as *mut c_void, layout.size()) as *mut c_char;
        if new_ptr.is_null() {
            exit(-1);
        }
        strs.d = new_ptr;
        strs.n = new_size;
    }

    if index < strs.i {
        let src = strs.d.offset((index * strs.icd.sz) as isize);
        let dest = strs.d.offset(((index + 1) * strs.icd.sz) as isize);
        let len = (strs.i - index) * strs.icd.sz;
        memmove(dest as *mut c_void, src as *const c_void, len);
    }

    if let Some(copy_fn) = strs.icd.copy {
        copy_fn(strs.d as *mut c_void, s as *const c_void);
    } else {
        copy(strs.d as *mut c_void, s as *const c_void, strs.icd.sz);
    }

    strs.i += 1;
}

unsafe fn get_next_string(strs: *mut UT_array, p: *mut *mut c_char) -> Option<*mut c_char> {
    let strs = &mut *strs;
    if p.is_null() {
        if strs.i == 0 {
            return None;
        } else {
            return Some(strs.d);
        }
    } else {
        let index = ((*p as usize - strs.d as usize) / strs.icd.sz) + 1;
        if index < strs.i {
            return Some(strs.d.offset((index * strs.icd.sz) as isize));
        } else {
            return None;
        }
    }
}

unsafe fn utarray_str_cpy(dst: *mut c_void, src: *const c_void) {
    let dst = dst as *mut *mut c_char;
    let src = src as *const *mut c_char;
    *dst = *src;
}

unsafe fn utarray_str_dtor(elt: *mut c_void) {
    let elt = elt as *mut *mut c_char;
    // No need to free the string as it's not dynamically allocated
}

unsafe extern "C" fn strsort(a: *const c_void, b: *const c_void) -> i32 {
    let a = a as *const *mut c_char;
    let b = b as *const *mut c_char;
    let a_str = *a;
    let b_str = *b;
    let a_len = strlen(a_str);
    let b_len = strlen(b_str);
    let min_len = if a_len < b_len { a_len } else { b_len };
    for i in 0..min_len {
        let a_char = *a_str.offset(i as isize);
        let b_char = *b_str.offset(i as isize);
        if a_char < b_char {
            return -1;
        } else if a_char > b_char {
            return 1;
        }
    }
    a_len.cmp(&b_len) as i32
}

unsafe extern "C" fn revsort(a: *const c_void, b: *const c_void) -> i32 {
    strsort(b, a)
}

unsafe fn strlen(s: *const c_char) -> usize {
    let mut len = 0;
    let mut ptr = s;
    while *ptr != 0 {
        len += 1;
        ptr = ptr.offset(1);
    }
    len
}
