use std::alloc::{alloc, dealloc, realloc, Layout};
use std::cmp::Ordering;
use std::ffi::c_void;
use std::mem;
use std::ptr::{self, NonNull};
use std::slice;

type Size = usize;
type OffT = isize;
type Off64T = i64;

#[repr(C)]
struct IoFile {
    flags: i32,
    read_ptr: *mut char,
    read_end: *mut char,
    read_base: *mut char,
    write_base: *mut char,
    write_ptr: *mut char,
    write_end: *mut char,
    buf_base: *mut char,
    buf_end: *mut char,
    save_base: *mut char,
    backup_base: *mut char,
    save_end: *mut char,
    markers: *mut IoMarker,
    chain: *mut IoFile,
    fileno: i32,
    flags2: i32,
    old_offset: OffT,
    cur_column: u16,
    vtable_offset: i8,
    shortbuf: [char; 1],
    lock: *mut IoLockT,
    offset: Off64T,
    codecvt: *mut IoCodecvt,
    wide_data: *mut IoWideData,
    freeres_list: *mut IoFile,
    freeres_buf: *mut c_void,
    pad5: Size,
    mode: i32,
    unused2: [u8; 15 * mem::size_of::<i32>() - 4 * mem::size_of::<*mut c_void>() - mem::size_of::<Size>()],
}

extern "C" {
    static stdin: *mut IoFile;
    static stdout: *mut IoFile;
    static stderr: *mut IoFile;
    fn printf(format: *const char, ...) -> i32;
    fn memcpy(dest: *mut c_void, src: *const c_void, n: Size) -> *mut c_void;
    fn memmove(dest: *mut c_void, src: *const c_void, n: Size) -> *mut c_void;
    fn memset(s: *mut c_void, c: i32, n: Size) -> *mut c_void;
}

union PthreadAttrT {
    size: [char; 56],
    align: isize,
}

extern "C" {
    fn malloc(size: Size) -> *mut c_void;
    fn realloc(ptr: *mut c_void, size: Size) -> *mut c_void;
    fn free(ptr: *mut c_void);
    fn exit(status: i32) -> !;
}

type ComparFnT = extern "C" fn(const *mut c_void, const *mut c_void) -> i32;

extern "C" {
    fn qsort(base: *mut c_void, nmemb: Size, size: Size, compar: ComparFnT);
}

type CtorF = extern "C" fn(*mut c_void, *const c_void);
type DtorF = extern "C" fn(*mut c_void);
type InitF = extern "C" fn(*mut c_void);

#[repr(C)]
struct UtIcd {
    sz: Size,
    init: Option<InitF>,
    copy: Option<CtorF>,
    dtor: Option<DtorF>,
}

#[repr(C)]
struct UtArray {
    i: u32,
    n: u32,
    icd: UtIcd,
    d: *mut char,
}

static UT_STR_ICD: UtIcd = UtIcd {
    sz: mem::size_of::<*mut char>(),
    init: None,
    copy: Some(utarray_str_cpy),
    dtor: Some(utarray_str_dtor),
};

static UT_INT_ICD: UtIcd = UtIcd {
    sz: mem::size_of::<i32>(),
    init: None,
    copy: None,
    dtor: None,
};

static UT_PTR_ICD: UtIcd = UtIcd {
    sz: mem::size_of::<*mut c_void>(),
    init: None,
    copy: None,
    dtor: None,
};

fn main() {
    let mut a: *mut UtArray;
    let mut i: i32;
    let mut p: *mut i32;
    unsafe {
        a = malloc(mem::size_of::<UtArray>()) as *mut UtArray;
        if a.is_null() {
            exit(-1);
        }
        memset(a as *mut c_void, 0, mem::size_of::<UtArray>());
        (*a).icd = UT_INT_ICD;
        for i in 0..10 {
            if ((*a).i + 1) > (*a).n {
                let mut utarray_tmp: *mut char;
                while ((*a).i + 1) > (*a).n {
                    (*a).n = if (*a).n != 0 { 2 * (*a).n } else { 8 };
                }
                utarray_tmp = realloc((*a).d as *mut c_void, ((*a).n as usize) * ((*a).icd.sz)) as *mut char;
                if utarray_tmp.is_null() {
                    exit(-1);
                }
                (*a).d = utarray_tmp;
            }
            if let Some(copy) = (*a).icd.copy {
                copy((*a).d.offset((*a).i as isize) as *mut c_void, &i as *const i32 as *const c_void);
            } else {
                memcpy((*a).d.offset((*a).i as isize) as *mut c_void, &i as *const i32 as *const c_void, (*a).icd.sz);
            }
            (*a).i += 1;
        }
        p = if (*a).i != 0 {
            (*a).d.offset(0) as *mut i32
        } else {
            ptr::null_mut()
        };
        while !p.is_null() {
            printf(b"%d \0".as_ptr() as *const char, *p);
            p = if (*a).i != ((*p as usize - (*a).d as usize) / (*a).icd.sz) + 1 {
                (*a).d.offset((((*p as usize - (*a).d as usize) / (*a).icd.sz) + 1) as isize) as *mut i32
            } else {
                ptr::null_mut()
            };
        }
        printf(b"\n\0".as_ptr() as *const char);
        qsort((*a).d as *mut c_void, (*a).i as usize, (*a).icd.sz, Some(reverse));
        while !p.is_null() {
            printf(b"%d \0".as_ptr() as *const char, *p);
            p = if (*a).i != ((*p as usize - (*a).d as usize) / (*a).icd.sz) + 1 {
                (*a).d.offset((((*p as usize - (*a).d as usize) / (*a).icd.sz) + 1) as isize) as *mut i32
            } else {
                ptr::null_mut()
            };
        }
        printf(b"\n\0".as_ptr() as *const char);
        if let Some(dtor) = (*a).icd.dtor {
            for _ut_i in 0..3 {
                if (3 + _ut_i) < (*a).i {
                    dtor((*a).d.offset((3 + _ut_i) as isize) as *mut c_void);
                }
            }
        }
        if (*a).i > (3 + 3) {
            memmove((*a).d.offset(3) as *mut c_void, (*a).d.offset((3 + 3) as isize) as *const c_void, ((*a).i - (3 + 3)) * (*a).icd.sz);
        }
        (*a).i -= 3;
        while !p.is_null() {
            printf(b"%d \0".as_ptr() as *const char, *p);
            p = if (*a).i != ((*p as usize - (*a).d as usize) / (*a).icd.sz) + 1 {
                (*a).d.offset((((*p as usize - (*a).d as usize) / (*a).icd.sz) + 1) as isize) as *mut i32
            } else {
                ptr::null_mut()
            };
        }
        printf(b"\n\0".as_ptr() as *const char);
        if let Some(dtor) = (*a).icd.dtor {
            for _ut_i in 0..2 {
                if (1 + _ut_i) < (*a).i {
                    dtor((*a).d.offset((1 + _ut_i) as isize) as *mut c_void);
                }
            }
        }
        if (*a).i > (1 + 2) {
            memmove((*a).d.offset(1) as *mut c_void, (*a).d.offset((1 + 2) as isize) as *const c_void, ((*a).i - (1 + 2)) * (*a).icd.sz);
        }
        (*a).i -= 2;
        while !p.is_null() {
            printf(b"%d \0".as_ptr() as *const char, *p);
            p = if (*a).i != ((*p as usize - (*a).d as usize) / (*a).icd.sz) + 1 {
                (*a).d.offset((((*p as usize - (*a).d as usize) / (*a).icd.sz) + 1) as isize) as *mut i32
            } else {
                ptr::null_mut()
            };
        }
        printf(b"\n\0".as_ptr() as *const char);
        if let Some(dtor) = (*a).icd.dtor {
            for _ut_i in 0..1 {
                if (0 + _ut_i) < (*a).i {
                    dtor((*a).d.offset((0 + _ut_i) as isize) as *mut c_void);
                }
            }
        }
        if (*a).i > (0 + 1) {
            memmove((*a).d.offset(0) as *mut c_void, (*a).d.offset((0 + 1) as isize) as *const c_void, ((*a).i - (0 + 1)) * (*a).icd.sz);
        }
        (*a).i -= 1;
        while !p.is_null() {
            printf(b"%d \0".as_ptr() as *const char, *p);
            p = if (*a).i != ((*p as usize - (*a).d as usize) / (*a).icd.sz) + 1 {
                (*a).d.offset((((*p as usize - (*a).d as usize) / (*a).icd.sz) + 1) as isize) as *mut i32
            } else {
                ptr::null_mut()
            };
        }
        printf(b"\n\0".as_ptr() as *const char);
        if let Some(dtor) = (*a).icd.dtor {
            for _ut_i in 0..1 {
                if (3 + _ut_i) < (*a).i {
                    dtor((*a).d.offset((3 + _ut_i) as isize) as *mut c_void);
                }
            }
        }
        if (*a).i > (3 + 1) {
            memmove((*a).d.offset(3) as *mut c_void, (*a).d.offset((3 + 1) as isize) as *const c_void, ((*a).i - (3 + 1)) * (*a).icd.sz);
        }
        (*a).i -= 1;
        while !p.is_null() {
            printf(b"%d \0".as_ptr() as *const char, *p);
            p = if (*a).i != ((*p as usize - (*a).d as usize) / (*a).icd.sz) + 1 {
                (*a).d.offset((((*p as usize - (*a).d as usize) / (*a).icd.sz) + 1) as isize) as *mut i32
            } else {
                ptr::null_mut()
            };
        }
        printf(b"\n\0".as_ptr() as *const char);
        if (*a).i > 5 {
            if let Some(dtor) = (*a).icd.dtor {
                for _ut_i in 5..(*a).i {
                    dtor((*a).d.offset(_ut_i as isize) as *mut c_void);
                }
            }
        } else if (*a).i < 5 {
            while (*a).i + (5 - (*a).i) > (*a).n {
                let mut utarray_tmp: *mut char;
                while (*a).i + (5 - (*a).i) > (*a).n {
                    (*a).n = if (*a).n != 0 { 2 * (*a).n } else { 8 };
                }
                utarray_tmp = realloc((*a).d as *mut c_void, ((*a).n as usize) * ((*a).icd.sz)) as *mut char;
                if utarray_tmp.is_null() {
                    exit(-1);
                }
                (*a).d = utarray_tmp;
            }
            if let Some(init) = (*a).icd.init {
                for _ut_i in (*a).i..5 {
                    init((*a).d.offset(_ut_i as isize) as *mut c_void);
                }
            } else {
                memset((*a).d.offset((*a).i as isize) as *mut c_void, 0, ((*a).icd.sz) * (5 - (*a).i));
            }
        }
        (*a).i = 5;
        while !p.is_null() {
            printf(b"%d \0".as_ptr() as *const char, *p);
            p = if (*a).i != ((*p as usize - (*a).d as usize) / (*a).icd.sz) + 1 {
                (*a).d.offset((((*p as usize - (*a).d as usize) / (*a).icd.sz) + 1) as isize) as *mut i32
            } else {
                ptr::null_mut()
            };
        }
        printf(b"\n\0".as_ptr() as *const char);
        if (*a).i > 3 {
            if let Some(dtor) = (*a).icd.dtor {
                for _ut_i in 3..(*a).i {
                    dtor((*a).d.offset(_ut_i as isize) as *mut c_void);
                }
            }
        } else if (*a).i < 3 {
            while (*a).i + (3 - (*a).i) > (*a).n {
                let mut utarray_tmp: *mut char;
                while (*a).i + (3 - (*a).i) > (*a).n {
                    (*a).n = if (*a).n != 0 { 2 * (*a).n } else { 8 };
                }
                utarray_tmp = realloc((*a).d as *mut c_void, ((*a).n as usize) * ((*a).icd.sz)) as *mut char;
                if utarray_tmp.is_null() {
                    exit(-1);
                }
                (*a).d = utarray_tmp;
            }
            if let Some(init) = (*a).icd.init {
                for _ut_i in (*a).i..3 {
                    init((*a).d.offset(_ut_i as isize) as *mut c_void);
                }
            } else {
                memset((*a).d.offset((*a).i as isize) as *mut c_void, 0, ((*a).icd.sz) * (3 - (*a).i));
            }
        }
        (*a).i = 3;
        while !p.is_null() {
            printf(b"%d \0".as_ptr() as *const char, *p);
            p = if (*a).i != ((*p as usize - (*a).d as usize) / (*a).icd.sz) + 1 {
                (*a).d.offset((((*p as usize - (*a).d as usize) / (*a).icd.sz) + 1) as isize) as *mut i32
            } else {
                ptr::null_mut()
            };
        }
        printf(b"\n\0".as_ptr() as *const char);
        if let Some(dtor) = (*a).icd.dtor {
            for _ut_i in 0..3 {
                if (0 + _ut_i) < (*a).i {
                    dtor((*a).d.offset((0 + _ut_i) as isize) as *mut c_void);
                }
            }
        }
        if (*a).i > (0 + 3) {
            memmove((*a).d.offset(0) as *mut c_void, (*a).d.offset((0 + 3) as isize) as *const c_void, ((*a).i - (0 + 3)) * (*a).icd.sz);
        }
        (*a).i -= 3;
        while !p.is_null() {
            printf(b"%d \0".as_ptr() as *const char, *p);
            p = if (*a).i != ((*p as usize - (*a).d as usize) / (*a).icd.sz) + 1 {
                (*a).d.offset((((*p as usize - (*a).d as usize) / (*a).icd.sz) + 1) as isize) as *mut i32
            } else {
                ptr::null_mut()
            };
        }
        printf(b"\n\0".as_ptr() as *const char);
        if (*a).n != 0 {
            if let Some(dtor) = (*a).icd.dtor {
                for _ut_i in 0..(*a).i {
                    dtor((*a).d.offset(_ut_i as isize) as *mut c_void);
                }
            }
            free((*a).d as *mut c_void);
        }
        (*a).n = 0;
        free(a as *mut c_void);
    }
}
