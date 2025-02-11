#![allow(unaligned_references)]
use std::ffi::c_void;

type UInt32 = u32;
type DarwinCtRuneT = i32;
type DarwinSizeT = usize;
type DarwinWcharT = i32;
type DarwinRuneT = DarwinWcharT;

#[repr(C)]
#[repr(C, packed)]struct RuneEntry {
    min: DarwinRuneT,
    max: DarwinRuneT,
    map: DarwinRuneT,
    types: *mut UInt32,
}

#[repr(C)]
#[repr(C, packed)]struct RuneRange {
    nranges: i32,
    ranges: *mut RuneEntry,
}

#[repr(C)]
#[repr(C, packed)]struct RuneCharClass {
    name: [u8; 14],
    mask: UInt32,
}

#[repr(C)]
#[repr(C, packed)]struct RuneLocale {
    magic: [u8; 8],
    encoding: [u8; 32],
    sgetrune: Option<extern "C" fn(*const u8, DarwinSizeT, *const *const u8) -> DarwinRuneT>,
    sputrune: Option<extern "C" fn(DarwinRuneT, *mut u8, DarwinSizeT, *mut *mut u8) -> i32>,
    invalid_rune: DarwinRuneT,
    runetype: [UInt32; 256],
    maplower: [DarwinRuneT; 256],
    mapupper: [DarwinRuneT; 256],
    runetype_ext: RuneRange,
    maplower_ext: RuneRange,
    mapupper_ext: RuneRange,
    variable: *mut c_void,
    variable_len: i32,
    ncharclasses: i32,
    charclasses: *mut RuneCharClass,
}

extern "C" {
    static _DefaultRuneLocale: RuneLocale;
}

#[no_mangle]
#[no_mangle]
fn is_ctype(c: DarwinCtRuneT, f: u32) -> DarwinCtRuneT {
    unsafe {
        if c < 0 || c >= 256 {
            0
        } else {
            if _DefaultRuneLocale.runetype[c as usize] & f != 0 {
                1
            } else {
                0
            }
        }
    }
}
