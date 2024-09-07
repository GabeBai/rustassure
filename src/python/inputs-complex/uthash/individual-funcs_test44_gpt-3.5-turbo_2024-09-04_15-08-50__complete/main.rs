use std::mem;
use std::ptr;

struct UT_icd {
    sz: usize,
    init: Option<fn(*mut std::ffi::c_void)>,
    copy: Option<fn(*mut std::ffi::c_void, *const std::ffi::c_void)>,
    dtor: Option<fn(*mut std::ffi::c_void)>,
}

struct UT_array {
    i: usize,
    n: usize,
    icd: UT_icd,
    d: *mut std::ffi::c_void,
}

fn main() {
    let mut a: *mut UT_array = unsafe { std::mem::transmute(std::ptr::null::<UT_array>()) };
    let ut_int_icd = UT_icd {
        sz: std::mem::size_of::<i32>(),
        init: None,
        copy: None,
        dtor: None,
    };

    unsafe {
        a = std::alloc::alloc(std::alloc::Layout::new::<UT_array>()) as *mut UT_array;
        if a.is_null() {
            std::process::exit(-1);
        }
        std::ptr::write(a, UT_array {
            i: 0,
            n: 0,
            icd: ut_int_icd,
            d: std::ptr::null_mut(),
        });
    }

    for i in 0..10 {
        unsafe {
            if a.as_ref().unwrap().i + 1 > a.as_ref().unwrap().n {
                let utarray_tmp = std::alloc::realloc((*a).d, (*a).n * (*a).icd.sz);
                if utarray_tmp.is_null() {
                    std::process::exit(-1);
                }
                (*a).d = utarray_tmp;
            }
            if let Some(copy_fn) = (*a).icd.copy {
                copy_fn((*a).d.add((*a).icd.sz * (*a).i), &i as *const _ as *const std::ffi::c_void);
            } else {
                std::ptr::copy_nonoverlapping(&i, (*a).d.add((*a).icd.sz * (*a).i) as *mut i32, 1);
            }
            (*a).i += 1;
        }
    }

    let mut p = unsafe { a.as_ref().unwrap().d as *const i32 };
    while !p.is_null() {
        print!("{} ", unsafe { *p });
        p = if p.is_null() {
            a.as_ref().unwrap().d as *const i32
        } else if a.as_ref().unwrap().i != ((p as usize - a.as_ref().unwrap().d as usize) / a.as_ref().unwrap().icd.sz) + 1 {
            a.as_ref().unwrap().d.add(a.as_ref().unwrap().icd.sz * (((p as usize - a.as_ref().unwrap().d as usize) / a.as_ref().unwrap().icd.sz) + 1)) as *const i32
        } else {
            std::ptr::null()
        };
    }
    println!();

    // Continue translating the rest of the C code to Rust...
}
