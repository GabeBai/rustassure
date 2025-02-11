#![allow(unaligned_references)]
use std::os::raw::{c_ulong, c_ulonglong};

type ZahlCharT = c_ulonglong;

#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
    used: usize,
    alloced: usize,
    chars: *mut ZahlCharT,
}

extern "C" {
#[no_mangle]
#[no_mangle]
    fn libzahl_realloc(z: *mut Zahl, size: usize);
#[no_mangle]
#[no_mangle]
    fn zzero(z: *mut Zahl) -> i32;
#[no_mangle]
#[no_mangle]
    fn zabs(dest: *mut Zahl, src: *mut Zahl);
#[no_mangle]
#[no_mangle]
    fn zadd_impl_3(a: *mut Zahl, b: *mut Zahl, n: usize);
#[no_mangle]
#[no_mangle]
    fn libzahl_memset(ptr: *mut ZahlCharT, value: i32, num: usize);
}

#[no_mangle]
#[no_mangle]
fn zadd_unsigned_assign(a: *mut Zahl, b: *mut Zahl) {
    let size: usize;
    let mut n: usize;
    
    unsafe {
        if zzero(a) != 0 {
            zabs(a, b);
            return;
        } else if zzero(b) != 0 {
            return;
        }
        
        size = if (*a).used > (*b).used { (*a).used } else { (*b).used };
        n = (*a).used + (*b).used - size;
        
        if (*a).alloced < size + 1 {
            libzahl_realloc(a, size + 1);
        }
        
        (*a).chars.add(size).write(0);
        
        if (*a).used < (*b).used {
            n = (*b).used;
            libzahl_memset((*a).chars.add((*a).used), 0, n - (*a).used);
        }
        
        zadd_impl_3(a, b, n);
        (*a).sign = 1;
    }
}
