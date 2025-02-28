use std::os::raw::{c_char, c_int};

#[repr(C)]
struct __sbuf {
    _base: *mut u8,
    _size: c_int,
}

#[repr(C)]
struct __sFILEX;

#[repr(C)]
struct __sFILE {
    _p: *mut u8,
    _r: c_int,
    _w: c_int,
    _flags: i16,
    _file: i16,
    _bf: __sbuf,
    _lbfsize: c_int,
    _cookie: *mut std::ffi::c_void,
    _close: Option<extern "C" fn(*mut std::ffi::c_void) -> c_int>,
    _read: Option<extern "C" fn(*mut std::ffi::c_void, *mut c_char, c_int) -> c_int>,
    _seek: Option<extern "C" fn(*mut std::ffi::c_void, fpos_t, c_int) -> fpos_t>,
    _write: Option<extern "C" fn(*mut std::ffi::c_void, *const c_char, c_int) -> c_int>,
    _ub: __sbuf,
    _extra: *mut __sFILEX,
    _ur: c_int,
    _ubuf: [u8; 3],
    _nbuf: [u8; 1],
    _lb: __sbuf,
    _blksize: c_int,
    _offset: fpos_t,
}

type fpos_t = i64;

extern "C" {
    fn __swbuf(arg1: c_int, arg2: *mut __sFILE) -> c_int;
}

fn __sputc(_c: c_int, _p: *mut __sFILE) -> c_int {
    unsafe {
        if (*_p)._w >= 0 || ((*_p)._w >= (*_p)._lbfsize && _c as u8 != b'\n') {
            (*(*_p)._p) = _c as u8;
            (*_p)._p = (*_p)._p.offset(1);
            (*_p)._w -= 1;
            _c
        } else {
            __swbuf(_c, _p)
        }
    }
}
