use std::os::raw::{c_int, c_void};

type fpos_t = i64;

struct __sbuf {
    _base: *mut u8,
    _size: c_int,
}

struct __sFILEX;

struct FILE {
    _p: *mut u8,
    _r: c_int,
    _w: c_int,
    _flags: i16,
    _file: i16,
    _bf: __sbuf,
    _lbfsize: c_int,
    _cookie: *mut c_void,
    _close: Option<extern "C" fn(*mut c_void) -> c_int>,
    _read: Option<extern "C" fn(*mut c_void, *mut i8, c_int) -> c_int>,
    _seek: Option<extern "C" fn(*mut c_void, fpos_t, c_int) -> fpos_t>,
    _write: Option<extern "C" fn(*mut c_void, *const i8, c_int) -> c_int>,
    _ub: __sbuf,
    _extra: *mut __sFILEX,
    _ur: c_int,
    _ubuf: [u8; 3],
    _nbuf: [u8; 1],
    _lb: __sbuf,
    _blksize: c_int,
    _offset: fpos_t,
}

extern {
    static __stderrp: *mut FILE;
    fn fputs(s: *const i8, stream: *mut FILE) -> c_int;
    fn exit(status: c_int) -> !;
}

fn osys_terminate() {
    let msg = "The execution of this program has been terminated abnormally.\n";
    unsafe {
        fputs(msg.as_ptr() as *const i8, __stderrp);
        exit(70);
    }
}
