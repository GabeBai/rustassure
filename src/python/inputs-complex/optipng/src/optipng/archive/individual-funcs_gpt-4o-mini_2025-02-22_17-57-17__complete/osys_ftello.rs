use std::os::raw::{c_short, c_void};
use std::ptr;

#[repr(C)]
struct SBuf {
    base: *mut u8,
    size: i32,
}

#[repr(C)]
struct SFileX;

#[repr(C)]
struct SFile {
    p: *mut u8,
    r: i32,
    w: i32,
    flags: c_short,
    file: c_short,
    bf: SBuf,
    lbfsize: i32,
    cookie: *mut c_void,
    close: Option<extern "C" fn(*mut c_void) -> i32>,
    read: Option<extern "C" fn(*mut c_void, *mut u8, i32) -> i32>,
    seek: Option<extern "C" fn(*mut c_void, i64, i32) -> i64>,
    write: Option<extern "C" fn(*mut c_void, *const u8, i32) -> i32>,
    ub: SBuf,
    extra: *mut SFileX,
    ur: i32,
    ubuf: [u8; 3],
    nbuf: [u8; 1],
    lb: SBuf,
    blksize: i32,
    offset: i64,
}

type OsysFoffsetT = i64;

extern "C" {
    fn ftell(stream: *mut SFile) -> i64;
}

fn osys_ftello(stream: *mut SFile) -> OsysFoffsetT {
    unsafe { ftell(stream) as OsysFoffsetT }
}
