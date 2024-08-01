use std::os::raw::c_void;

pub type size_t = usize;

#[repr(C)]
union pthread_attr_t {
    __size: [u8; 56],
    __align: std::os::raw::c_long,
}

pub type __compar_fn_t = extern "C" fn(*const c_void, *const c_void) -> i32;

#[no_mangle]
pub extern "C" fn bsearch(
    __key: *const c_void,
    __base: *const c_void,
    __nmemb: size_t,
    __size: size_t,
    __compar: __compar_fn_t,
) -> *mut c_void {
    let mut __l: size_t;
    let mut __u: size_t;
    let mut __idx: size_t;
    let mut __p: *const c_void;
    let mut __comparison: i32;

    __l = 0;
    __u = __nmemb;
    while __l < __u {
        __idx = (__l + __u) / 2;
        __p = unsafe { __base.add(__idx * __size) };
        __comparison = unsafe { __compar(__key, __p) };
        if __comparison < 0 {
            __u = __idx;
        } else if __comparison > 0 {
            __l = __idx + 1;
        } else {
            return __p as *mut c_void;
        }
    }
    std::ptr::null_mut()
}
