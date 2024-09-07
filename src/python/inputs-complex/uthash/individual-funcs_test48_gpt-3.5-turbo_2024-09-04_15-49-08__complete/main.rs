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

const UT_INT_ICD: UT_icd = UT_icd {
    sz: std::mem::size_of::<i32>(),
    init: None,
    copy: None,
    dtor: None,
};

fn main() {
    let mut nums: *mut UT_array;
    let mut i: i32;
    let mut p: *mut i32;

    unsafe {
        nums = std::ptr::null_mut();
        nums = std::alloc::alloc(std::alloc::Layout::new::<UT_array>()) as *mut UT_array;
        if nums.is_null() {
            std::process::exit(-1);
        }
        std::ptr::write(nums, UT_array {
            i: 0,
            n: 0,
            icd: UT_INT_ICD,
            d: std::ptr::null_mut(),
        });

        for i in 0..10 {
            if (*nums).i + 1 > (*nums).n {
                let mut utarray_tmp: *mut std::ffi::c_void;
                while (*nums).i + 1 > (*nums).n {
                    (*nums).n = if (*nums).n != 0 { 2 * (*nums).n } else { 8 };
                }
                utarray_tmp = std::alloc::realloc((*nums).d as *mut std::ffi::c_void, std::alloc::Layout::array::<i32>((*nums).n).size()) as *mut std::ffi::c_void;
                if utarray_tmp.is_null() {
                    std::process::exit(-1);
                }
                (*nums).d = utarray_tmp;
            }
            if let Some(copy_fn) = (*nums).icd.copy {
                copy_fn((*nums).d.offset((*nums).icd.sz as isize * (*nums).i), &i as *const i32 as *const std::ffi::c_void);
            } else {
                std::ptr::copy_nonoverlapping(&i, (*nums).d.offset((*nums).icd.sz as isize * (*nums).i) as *mut i32, 1);
            }
            (*nums).i += 1;
        }

        p = (*nums).d as *mut i32;
        while !p.is_null() {
            println!("{}", *p);
            p = if p.is_null() {
                if (*nums).i != ((p as usize - (*nums).d as usize) / (*nums).icd.sz) + 1 {
                    (*nums).d.offset((*nums).icd.sz as isize * (((p as usize - (*nums).d as usize) / (*nums).icd.sz) + 1) as isize)
                } else {
                    std::ptr::null_mut()
                }
            } else {
                std::ptr::null_mut()
            };
        }

        if (*nums).n != 0 {
            if let Some(dtor_fn) = (*nums).icd.dtor {
                for ut_i in 0..(*nums).i {
                    dtor_fn((*nums).d.offset((*nums).icd.sz as isize * ut_i));
                }
            }
            std::alloc::dealloc((*nums).d as *mut u8, std::alloc::Layout::array::<i32>((*nums).n));
        }
        (*nums).n = 0;
        std::alloc::dealloc(nums as *mut u8, std::alloc::Layout::new::<UT_array>());
    }
}
