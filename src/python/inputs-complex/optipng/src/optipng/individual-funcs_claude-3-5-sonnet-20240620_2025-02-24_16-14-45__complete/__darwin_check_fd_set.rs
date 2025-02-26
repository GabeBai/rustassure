use std::ffi::c_int;
use std::ffi::c_void;

#[inline(always)]
fn __darwin_check_fd_set(_a: c_int, _b: *const c_void) -> c_int {
    #[allow(unused_unsafe)]
    unsafe {
        if __darwin_check_fd_set_overflow as usize != 0 {
            __darwin_check_fd_set_overflow(_a, _b, 0)
        } else {
            1
        }
    }
}

extern "C" {
    fn __darwin_check_fd_set_overflow(
        _a: c_int,
        _b: *const c_void,
        _c: c_int,
    ) -> c_int;
}