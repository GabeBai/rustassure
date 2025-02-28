use std::os::raw::c_int;
use std::os::raw::c_long;

#[inline]
fn __istype(_c: c_int, _f: c_long) -> c_int {
    if isascii(_c) != 0 {
        (_DefaultRuneLocale.__runetype[_c as usize] & _f as u32 != 0) as c_int
    } else {
        (__maskrune(_c, _f as u32) != 0) as c_int
    }
}

extern "C" {
    fn isascii(_c: c_int) -> c_int;
    fn __maskrune(_c: c_int, _f: u32) -> c_int;
    static _DefaultRuneLocale: _RuneLocale;
}

#[repr(C)]
struct _RuneLocale {
    __magic: [u8; 8],
    __encoding: [u8; 32],
    __sgetrune: Option<unsafe extern "C" fn(*const i8, usize, *const *const i8) -> i32>,
    __sputrune: Option<unsafe extern "C" fn(i32, *mut i8, usize, *mut *mut i8) -> c_int>,
    __invalid_rune: i32,
    __runetype: [u32; 256],
    __maplower: [i32; 256],
    __mapupper: [i32; 256],
    __runetype_ext: _RuneRange,
    __maplower_ext: _RuneRange,
    __mapupper_ext: _RuneRange,
    __variable: *mut std::ffi::c_void,
    __variable_len: c_int,
    __ncharclasses: c_int,
    __charclasses: *mut _RuneCharClass,
}

#[repr(C)]
struct _RuneRange {
    __nranges: c_int,
    __ranges: *mut _RuneEntry,
}

#[repr(C)]
struct _RuneEntry {
    __min: i32,
    __max: i32,
    __map: i32,
    __types: *mut u32,
}

#[repr(C)]
struct _RuneCharClass {
    __name: [u8; 14],
    __mask: u32,
}