use std::os::raw::{c_void, c_int};
use std::mem::{size_of, zeroed, transmute};
use std::ptr::{null, null_mut};
use std::alloc::{malloc, realloc, free};
use std::process::exit;

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
    i: usize,
    n: usize,
    icd: UT_icd,
    d: *mut c_void,
}

static ut_str_icd: UT_icd = UT_icd {
    sz: size_of::<*mut c_void>(),
    init: None,
    copy: Some(utarray_str_cpy),
    dtor: Some(utarray_str_dtor),
};

static ut_int_icd: UT_icd = UT_icd {
    sz: size_of::<c_int>(),
    init: None,
    copy: None,
    dtor: None,
};

static ut_ptr_icd: UT_icd = UT_icd {
    sz: size_of::<*mut c_void>(),
    init: None,
    copy: None,
    dtor: None,
};

fn main() {
    let mut a: *mut UT_array;
    let mut i: c_int;
    let mut p: *mut c_int;

    unsafe {
        a = malloc(size_of::<UT_array>()) as *mut UT_array;
        if a == null_mut() {
            exit(-1);
        }
        let mut temp: UT_array = zeroed();
        *a = temp;
        (*a).icd = ut_int_icd;
    }

    for i in 0..10 {
        unsafe {
            if (*a).i + 1 > (*a).n {
                let mut utarray_tmp: *mut c_void;
                while (*a).i + 1 > (*a).n {
                    (*a).n = if (*a).n != 0 { 2 * (*a).n } else { 8 };
                }
                utarray_tmp = realloc((*a).d, (*a).n * (*a).icd.sz);
                if utarray_tmp == null_mut() {
                    exit(-1);
                }
                (*a).d = utarray_tmp;
            }
            if let Some(copy_fn) = (*a).icd.copy {
                copy_fn((*a).d.offset((*a).icd.sz as isize * (*a).i), &i as *const c_int as *const c_void);
            } else {
                std::ptr::copy_nonoverlapping(&i, (*a).d.offset((*a).icd.sz as isize * (*a).i) as *mut c_int, 1);
            }
            (*a).i += 1;
        }
    }

    for p in unsafe { ((*a).i != 0).then(|| (*a).d.offset(0)).unwrap() }.. {
        if p == null_mut() {
            break;
        }
        unsafe {
            printf("%d ", *p);
        }
    }
    printf("\n");

    unsafe {
        qsort((*a).d, (*a).i, (*a).icd.sz, reverse);
    }

    while {
        p = if p == null_mut() {
            ((*a).i != 0).then(|| (*a).d.offset(0)).unwrap()
        } else {
            if (*a).i != ((p as usize - (*a).d as usize) / (*a).icd.sz) + 1 {
                (*a).d.offset(((((p as usize - (*a).d as usize) / (*a).icd.sz) + 1) * (*a).icd.sz) as isize)
            } else {
                null_mut()
            }
        };
        p != null_mut()
    } {
        unsafe {
            printf("%d ", *p);
        }
    }
    printf("\n");

    unsafe {
        if let Some(dtor_fn) = (*a).icd.dtor {
            for ut_i in 0..3 {
                dtor_fn(if 3 + ut_i < (*a).i { (*a).d.offset((3 + ut_i) as isize * (*a).icd.sz) } else { null_mut() });
            }
        }
        if (*a).i > 3 + 3 {
            memmove((*a).d.offset(3 * (*a).icd.sz) as *mut c_void, (*a).d.offset((3 + 3) * (*a).icd.sz) as *mut c_void, ((*a).i - (3 + 3)) * (*a).icd.sz);
        }
        (*a).i -= 3;
    }

    while {
        p = if p == null_mut() {
            ((*a).i != 0).then(|| (*a).d.offset(0)).unwrap()
        } else {
            if (*a).i != ((p as usize - (*a).d as usize) / (*a).icd.sz) + 1 {
                (*a).d.offset(((((p as usize - (*a).d as usize) / (*a).icd.sz) + 1) * (*a).icd.sz) as isize)
            } else {
                null_mut()
            }
        };
        p != null_mut()
    } {
        unsafe {
            printf("%d ", *p);
        }
    }
    printf("\n");

    unsafe {
        if let Some(dtor_fn) = (*a).icd.dtor {
            for ut_i in 0..2 {
                dtor_fn(if 1 + ut_i < (*a).i { (*a).d.offset((1 + ut_i) as isize * (*a).icd.sz) } else { null_mut() });
            }
        }
        if (*a).i > 1 + 2 {
            memmove((*a).d.offset(1 * (*a).icd.sz) as *mut c_void, (*a).d.offset((1 + 2) * (*a).icd.sz) as *mut c_void, ((*a).i - (1 + 2)) * (*a).icd.sz);
        }
        (*a).i -= 2;
    }

    while {
        p = if p == null_mut() {
            ((*a).i != 0).then(|| (*a).d.offset(0)).unwrap()
        } else {
            if (*a).i != ((p as usize - (*a).d as usize) / (*a).icd.sz) + 1 {
                (*a).d.offset(((((p as usize - (*a).d as usize) / (*a).icd.sz) + 1) * (*a).icd.sz) as isize)
            } else {
                null_mut()
            }
        };
        p != null_mut()
    } {
        unsafe {
            printf("%d ", *p);
        }
    }
    printf("\n");

    unsafe {
        if let Some(dtor_fn) = (*a).icd.dtor {
            for ut_i in 0..1 {
                dtor_fn(if 0 + ut_i < (*a).i { (*a).d.offset((0 + ut_i) as isize * (*a).icd.sz) } else { null_mut() });
            }
        }
        if (*a).i > 0 + 1 {
            memmove((*a).d.offset(0 * (*a).icd.sz) as *mut c_void, (*a).d.offset((0 + 1) * (*a).icd.sz) as *mut c_void, ((*a).i - (0 + 1)) * (*a).icd.sz);
        }
        (*a).i -= 1;
    }

    while {
        p = if p == null_mut() {
            ((*a).i != 0).then(|| (*a).d.offset(0)).unwrap()
        } else {
            if (*a).i != ((p as usize - (*a).d as usize) / (*a).icd.sz) + 1 {
                (*a).d.offset(((((p as usize - (*a).d as usize) / (*a).icd.sz) + 1) * (*a).icd.sz) as isize)
            } else {
                null_mut()
            }
        };
        p != null_mut()
    } {
        unsafe {
            printf("%d ", *p);
        }
    }
    printf("\n");

    unsafe {
        if (*a).i > 5 {
            if let Some(dtor_fn) = (*a).icd.dtor {
                for ut_i in 5..(*a).i) {
                    dtor_fn((*a).d.offset(ut_i as isize * (*a).icd.sz));
                }
            }
        } else if (*a).i < 5 {
            if (*a).i + (5 - (*a).i) > (*a).n {
                let mut utarray_tmp: *mut c_void;
                while (*a).i + (5 - (*a).i) > (*a).n {
                    (*a).n = if (*a).n != 0 { 2 * (*a).n } else { 8 };
                }
                utarray_tmp = realloc((*a).d, (*a).n * (*a).icd.sz);
                if utarray_tmp == null_mut() {
                    exit(-1);
                }
                (*a).d = utarray_tmp;
            }
            if let Some(init_fn) = (*a).icd.init {
                for ut_i in (*a).i..5 {
                    init_fn((*a).d.offset(ut_i as isize * (*a).icd.sz));
                }
            } else {
                memset((*a).d.offset((*a).i as isize * (*a).icd.sz), 0, (*a).icd.sz * (5 - (*a).i));
            }
        }
        (*a).i = 5;
    }

    while {
        p = if p == null_mut() {
            ((*a).i != 0).then(|| (*a).d.offset(0)).unwrap()
        } else {
            if (*a).i != ((p as usize - (*a).d as usize) / (*a).icd.sz) + 1 {
                (*a).d.offset(((((p as usize - (*a).d as usize) / (*a).icd.sz) + 1) * (*a).icd.sz) as isize)
            } else {
                null_mut()
            }
        };
        p != null_mut()
    } {
        unsafe {
            printf("%d ", *p);
        }
    }
    printf("\n");

    unsafe {
        if (*a).i > 3 {
            if let Some(dtor_fn) = (*a).icd.dtor {
                for ut_i in 3..(*a).i) {
                    dtor_fn((*a).d.offset(ut_i as isize * (*a).icd.sz));
                }
            }
        } else if (*a).i < 3 {
            if (*a).i + (3 - (*a).i) > (*a).n {
                let mut utarray_tmp: *mut c_void;
                while (*a).i + (3 - (*a).i) > (*a).n {
                    (*a).n = if (*a).n != 0 { 2 * (*a).n } else { 8 };
                }
                utarray_tmp = realloc((*a).d, (*a).n * (*a).icd.sz);
                if utarray_tmp == null_mut() {
                    exit(-1);
                }
                (*a).d = utarray_tmp;
            }
            if let Some(init_fn) = (*a).icd.init {
                for ut_i in (*a).i..3 {
                    init_fn((*a).d.offset(ut_i as isize * (*a).icd.sz));
                }
            } else {
                memset((*a).d.offset((*a).i as isize * (*a).icd.sz), 0, (*a).icd.sz * (3 - (*a).i));
            }
        }
        (*a).i = 3;
    }

    while {
        p = if p == null_mut() {
            ((*a).i != 0).then(|| (*a).d.offset(0)).unwrap()
        } else {
            if (*a).i != ((p as usize - (*a).d as usize) / (*a).icd.sz) + 1 {
                (*a).d.offset(((((p as usize - (*a).d as usize) / (*a).icd.sz) + 1) * (*a).icd.sz) as isize)
            } else {
                null_mut()
            }
        };
        p != null_mut()
    } {
        unsafe {
            printf("%d ", *p);
        }
    }
    printf("\n");

    unsafe {
        if let Some(dtor_fn) = (*a).icd.dtor {
            for ut_i in 0..3 {
                dtor_fn(if 0 + ut_i < (*a).i { (*a).d.offset((0 + ut_i) as isize * (*a).icd.sz) } else { null_mut() });
            }
        }
        if (*a).i > 0 + 3 {
            memmove((*a).d.offset(0 * (*a).icd.sz) as *mut c_void, (*a).d.offset((0 + 3) * (*a).icd.sz) as *mut c_void, ((*a).i - (0 + 3)) * (*a).icd.sz);
        }
        (*a).i -= 3;
    }

    while {
        p = if p == null_mut() {
            ((*a).i != 0).then(|| (*a).d.offset(0)).unwrap()
        } else {
            if (*a).i != ((p as usize - (*a).d as usize) / (*a).icd.sz) + 1 {
                (*a).d.offset(((((p as usize - (*a).d as usize) / (*a).icd.sz) + 1) * (*a).icd.sz) as isize)
            } else {
                null_mut()
            }
        };
        p != null_mut()
    } {
        unsafe {
            printf("%d ", *p);
        }
    }
    printf("\n");

    unsafe {
        if (*a).n != 0 {
            if let Some(dtor_fn) = (*a).icd.dtor {
                for ut_i in 0..(*a).i {
                    dtor_fn(if ut_i < (*a).i { (*a).d.offset(ut_i as isize * (*a).icd.sz) } else { null_mut() });
                }
            }
            free((*a).d);
        }
        (*a).n = 0;
        free(a as *mut c_void);
    }
}
