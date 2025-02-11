#![allow(unaligned_references)]
use std::os::raw::c_char;

#[repr(C)]
enum ZError {
    ZErrorErrnoSet = 0,
    ZError0Pow0,
    ZError0Div0,
    ZErrorDiv0,
    ZErrorNegative,
    ZErrorInvalidRadix,
}

extern "C" {
#[no_mangle]
#[no_mangle]
    fn strerror(errnum: i32) -> *const c_char;
    static mut libzahl_error: i32;
}

#[no_mangle]
#[no_mangle]
fn zerror(desc: Option<&mut *const c_char>) -> ZError {
    unsafe {
        if libzahl_error >= 0 {
            if let Some(desc) = desc {
                *desc = strerror(libzahl_error);
            }
            *crate::__error() = libzahl_error;
            return ZError::ZErrorErrnoSet;
        }

        if let Some(desc) = desc {
            match -libzahl_error {
                ZError::ZError0Pow0 => *desc = "indeterminate form: 0:th power of 0\0".as_ptr() as *const c_char,
                ZError::ZError0Div0 => *desc = "indeterminate form: 0 divided by 0\0".as_ptr() as *const c_char,
                ZError::ZErrorDiv0 => *desc = "undefined result: division by 0\0".as_ptr() as *const c_char,
                ZError::ZErrorNegative => *desc = "argument must be non-negative\0".as_ptr() as *const c_char,
                _ => {
                    std::process::abort();
                }
            }
        }

        return ZError::ZErrorErrnoSet;
    }
}
