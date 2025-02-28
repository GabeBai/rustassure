use std::os::raw::{c_int, c_ulong};

#[link(name = "c")]
extern "C" {
    static _DefaultRuneLocale: _RuneLocale;
    fn isascii(c: c_int) -> c_int;
    fn __maskrune(c: c_int, f: c_ulong) -> c_int;
}

#[repr(C)]
struct _RuneEntry {
    __min: __darwin_rune_t,
    __max: __darwin_rune_t,
    __map: __darwin_rune_t,
    __types: *mut u32,
}

#[repr(C)]
struct _RuneRange {
    __nranges: c_int,
    __ranges: *mut _RuneEntry,
}

#[repr(C)]
struct _RuneCharClass {
    __name: [u8; 14],
    __mask: u32,
}

#[repr(C)]
struct _RuneLocale {
    __magic: [u8; 8],
    __encoding: [u8; 32],
    __sgetrune: extern "C" fn(*const i8, __darwin_size_t, *const *const i8) -> __darwin_rune_t,
    __sputrune: extern "C" fn(__darwin_rune_t, *mut i8, __darwin_size_t, *const *mut i8) -> c_int,
    __invalid_rune: __darwin_rune_t,
    __runetype: [u32; 256],
    __maplower: [__darwin_rune_t; 256],
    __mapupper: [__darwin_rune_t; 256],
    __runetype_ext: _RuneRange,
    __maplower_ext: _RuneRange,
    __mapupper_ext: _RuneRange,
    __variable: *mut std::ffi::c_void,
    __variable_len: c_int,
    __ncharclasses: c_int,
    __charclasses: *mut _RuneCharClass,
}

extern {
    static _DefaultRuneLocale: _RuneLocale;
}

fn __istype(_c: __darwin_ct_rune_t, _f: c_ulong) -> c_int {
    if isascii(_c) != 0 {
        return if (_DefaultRuneLocale.__runetype[_c as usize] & _f) != 0 {
            1
        } else {
            0
        };
    } else {
        return if __maskrune(_c, _f) != 0 {
            1
        } else {
            0
        };
    }
}
