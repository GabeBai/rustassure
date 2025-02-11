#![allow(unaligned_references)]
type DarwinCtRuneT = i32;
type DarwinRuneT = i32;
type Uint32T = u32;

#[repr(C, packed)]struct RuneEntry {
    min: DarwinRuneT,
    max: DarwinRuneT,
    map: DarwinRuneT,
    types: *const Uint32T,
}

#[repr(C, packed)]struct RuneRange {
    nranges: i32,
    ranges: *const RuneEntry,
}

#[repr(C, packed)]struct RuneCharClass {
    name: [u8; 14],
    mask: Uint32T,
}

#[repr(C, packed)]struct RuneLocale {
    magic: [u8; 8],
    encoding: [u8; 32],
    sgetrune: Option<fn(*const u8, usize, *const *const u8) -> DarwinRuneT>,
    sputrune: Option<fn(DarwinRuneT, *mut u8, usize, *mut *mut u8) -> i32>,
    invalid_rune: DarwinRuneT,
    runetype: [Uint32T; 256],
    maplower: [DarwinRuneT; 256],
    mapupper: [DarwinRuneT; 256],
    runetype_ext: RuneRange,
    maplower_ext: RuneRange,
    mapupper_ext: RuneRange,
    variable: *mut std::ffi::c_void,
    variable_len: i32,
    ncharclasses: i32,
    charclasses: *const RuneCharClass,
}

extern "C" {
    static _DefaultRuneLocale: RuneLocale;
#[no_mangle]
#[no_mangle]
    fn __maskrune(c: DarwinCtRuneT, f: u64) -> i32;
}

#[no_mangle]
#[no_mangle]
fn isascii(c: DarwinCtRuneT) -> bool {
    c >= 0 && c < 128
}

#[no_mangle]
#[no_mangle]
fn istype(c: DarwinCtRuneT, f: u64) -> bool {
    unsafe {
        if isascii(c) {
            (_DefaultRuneLocale.runetype[c as usize] as u64 & f) != 0
        } else {
            __maskrune(c, f) != 0
        }
    }
}
