#![allow(unaligned_references)]
use std::os::raw::{c_ulong, c_ulonglong};

type ZahlCharT = u64;

#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
    used: usize,
    alloced: usize,
    chars: *mut ZahlCharT,
}

impl Zahl {
#[no_mangle]
#[no_mangle]
    fn zzero(&self) -> bool {
        self.used == 0
    }
}

#[no_mangle]
#[no_mangle]
fn libzahl_realloc(a: *mut Zahl, size: usize) {
    // Implementation of libzahl_realloc
}

#[no_mangle]
#[no_mangle]
fn zbset_ll_clear(a: *mut Zahl, bit: usize) {
    let mut mask: ZahlCharT = 1;
    let chars = bit >> 6;

    if chars >= unsafe { (*a).used } {
        if unsafe { (*a).zzero() } {
            unsafe {
                (*a).used = 0;
                (*a).sign = 1;
            }
        }

        if chars >= unsafe { (*a).used } {
            unsafe {
                while (*a).alloced < chars + 1 {
                    libzahl_realloc(a, chars + 1);
                }
                for i in (*a).used..chars + 1 {
                    *(*a).chars.add(i) = 0;
                }
                (*a).used = chars + 1;
            }
        }
    } else {
        return;
    }

    let bit = bit & 63;
    mask <<= bit;

    unsafe {
        *(*a).chars.add(chars) &= !mask;

        while (*a).used > 0 && *(*a).chars.add((*a).used - 1) == 0 {
            (*a).used -= 1;
        }

        if (*a).used == 0 {
            (*a).sign = 0;
        }
    }
}
