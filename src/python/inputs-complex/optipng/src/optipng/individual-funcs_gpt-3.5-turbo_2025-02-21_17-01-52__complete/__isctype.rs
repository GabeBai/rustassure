use std::os::raw::{c_int, c_ulong};

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
    __sgetrune: Option<unsafe extern "C" fn(*const i8, __darwin_size_t, *const *const i8) -> __darwin_rune_t>,
    __sputrune: Option<unsafe extern "C" fn(__darwin_rune_t, *mut i8, __darwin_size_t, *mut *const i8) -> c_int>,
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

type __darwin_ct_rune_t = __darwin_rune_t;
type __darwin_size_t = usize;
type __darwin_wchar_t = i32;
type __darwin_rune_t = i32;

fn __isctype(_c: __darwin_ct_rune_t, _f: c_ulong) -> __darwin_ct_rune_t {
    if _c < 0 || _c >= 256 {
        return 0;
    }
    
    (_DefaultRuneLocale.__runetype[_c as usize] & _f) as __darwin_ct_rune_t
}
