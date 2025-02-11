#![allow(unaligned_references)]
use std::alloc::{alloc, dealloc, Layout};
use std::mem;

type ZahlCharT = u64; // Assuming zahl_char_t is uint64_t in C

static mut LIBZAHL_POOL: [Option<*mut ZahlCharT>; std::mem::size_of::<usize>() * 8] = [None; std::mem::size_of::<usize>() * 8];
static mut LIBZAHL_POOL_N: [usize; std::mem::size_of::<usize>() * 8] = [0; std::mem::size_of::<usize>() * 8];
static mut LIBZAHL_POOL_ALLOC: [usize; std::mem::size_of::<usize>() * 8] = [0; std::mem::size_of::<usize>() * 8];

#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
    used: usize,
    alloced: usize,
    chars: *mut ZahlCharT,
}

type ZT = [Zahl; 1];

#[no_mangle]
#[no_mangle]
fn zfree(a: &mut ZT) {
    let i: usize;
    let x: usize;
    let j: usize;
    let mut new: *mut *mut ZahlCharT;

    if a[0].chars.is_null() {
        return;
    }

    i = (8 * std::mem::size_of::<usize>() - 1 - (a[0].alloced.leading_zeros() as usize));
    j = unsafe { LIBZAHL_POOL_N[i] };
    unsafe { LIBZAHL_POOL_N[i] += 1 };

    if j == unsafe { LIBZAHL_POOL_ALLOC[i] } {
        x = if j != 0 { (j * 3) >> 1 } else { 128 };
        new = unsafe {
            std::alloc::realloc(
                LIBZAHL_POOL[i] as *mut u8,
                Layout::array::<*mut ZahlCharT>(x).unwrap(),
                x * std::mem::size_of::<*mut ZahlCharT>(),
            ) as *mut *mut ZahlCharT
        };

        if new.is_null() {
            std::alloc::dealloc(a[0].chars as *mut u8, Layout::from_size_align(a[0].alloced, mem::align_of::<ZahlCharT>()));
            std::alloc::dealloc(LIBZAHL_POOL[i] as *mut u8, Layout::array::<*mut ZahlCharT>(unsafe { LIBZAHL_POOL_ALLOC[i] }).unwrap());
            unsafe {
                LIBZAHL_POOL_N[i] = 0;
                LIBZAHL_POOL[i] = std::ptr::null_mut();
                LIBZAHL_POOL_ALLOC[i] = 0;
            }
            return;
        }

        unsafe {
            LIBZAHL_POOL[i] = new;
            LIBZAHL_POOL_ALLOC[i] = x;
        }
    }

    unsafe {
        LIBZAHL_POOL[i].unwrap().add(j).write(a[0].chars);
    }
}
