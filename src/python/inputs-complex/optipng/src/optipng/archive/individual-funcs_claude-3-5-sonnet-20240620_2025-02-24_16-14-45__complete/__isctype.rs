#[inline]
fn __isctype(_c: i32, _f: u64) -> i32 {
    if _c < 0 || _c >= (1 << 8) {
        0
    } else {
        (unsafe { _DefaultRuneLocale.__runetype[_c as usize] & _f as u32 } != 0) as i32
    }
}

static _DefaultRuneLocale: _RuneLocale = _RuneLocale {
    __magic: [0; 8],
    __encoding: [0; 32],
    __sgetrune: None,
    __sputrune: None,
    __invalid_rune: 0,
    __runetype: [0; 1 << 8],
    __maplower: [0; 1 << 8],
    __mapupper: [0; 1 << 8],
    __runetype_ext: _RuneRange { __nranges: 0, __ranges: std::ptr::null_mut() },
    __maplower_ext: _RuneRange { __nranges: 0, __ranges: std::ptr::null_mut() },
    __mapupper_ext: _RuneRange { __nranges: 0, __ranges: std::ptr::null_mut() },
    __variable: std::ptr::null_mut(),
    __variable_len: 0,
    __ncharclasses: 0,
    __charclasses: std::ptr::null_mut(),
};

#[repr(C)]
struct _RuneLocale {
    __magic: [i8; 8],
    __encoding: [i8; 32],
    __sgetrune: Option<unsafe extern "C" fn(*const i8, usize, *const *const i8) -> i32>,
    __sputrune: Option<unsafe extern "C" fn(i32, *mut i8, usize, *mut *mut i8) -> i32>,
    __invalid_rune: i32,
    __runetype: [u32; 1 << 8],
    __maplower: [i32; 1 << 8],
    __mapupper: [i32; 1 << 8],
    __runetype_ext: _RuneRange,
    __maplower_ext: _RuneRange,
    __mapupper_ext: _RuneRange,
    __variable: *mut std::ffi::c_void,
    __variable_len: i32,
    __ncharclasses: i32,
    __charclasses: *mut _RuneCharClass,
}

#[repr(C)]
struct _RuneRange {
    __nranges: i32,
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
    __name: [i8; 14],
    __mask: u32,
}