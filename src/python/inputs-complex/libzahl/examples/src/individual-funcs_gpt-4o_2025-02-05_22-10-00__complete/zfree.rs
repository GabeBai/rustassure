#![allow(unaligned_references)]
use std::ptr;
use std::alloc::{self, Layout};

// Define the Zahl struct and make it public
#[derive(Debug)]
pub struct Zahl {
    sign: i32,
    padding__: i32,
    used: usize,
    alloced: usize,
    chars: *mut u64, // Using u64 as equivalent to zahl_char_t
}

// Define the z_t type as a mutable reference to a Zahl
pub type ZT = [Zahl; 1];

// Define the libzahl_pool and related arrays
const SIZE_T_BITS: usize = std::mem::size_of::<usize>() * 8;
static mut LIBZAHL_POOL: [*mut *mut u64; SIZE_T_BITS] = [ptr::null_mut(); SIZE_T_BITS];
static mut LIBZAHL_POOL_N: [usize; SIZE_T_BITS] = [0; SIZE_T_BITS];
static mut LIBZAHL_POOL_ALLOC: [usize; SIZE_T_BITS] = [0; SIZE_T_BITS];

// The zfree function
pub unsafe extern "C" fn zfree(a: ZT) {
    if a[0].chars.is_null() {
        return;
    }

    let i = (SIZE_T_BITS - 1) - (a[0].alloced.leading_zeros() as usize);
    let j = LIBZAHL_POOL_N[i];
    LIBZAHL_POOL_N[i] += 1;

    if j == LIBZAHL_POOL_ALLOC[i] {
        let x = if j != 0 { (j * 3) / 2 } else { 128 };
        let new_size = x * std::mem::size_of::<*mut u64>();
        let layout = Layout::array::<*mut u64>(x).unwrap();

        let new = if LIBZAHL_POOL[i].is_null() {
            alloc::alloc(layout) as *mut *mut u64
        } else {
            alloc::realloc(LIBZAHL_POOL[i] as *mut u8, layout, new_size) as *mut *mut u64
        };

        if new.is_null() {
            alloc::dealloc(a[0].chars as *mut u8, Layout::new::<u64>());
            if !LIBZAHL_POOL[i].is_null() {
                alloc::dealloc(LIBZAHL_POOL[i] as *mut u8, layout);
            }
            LIBZAHL_POOL_N[i] = 0;
            LIBZAHL_POOL[i] = ptr::null_mut();
            LIBZAHL_POOL_ALLOC[i] = 0;
            return;
        }

        LIBZAHL_POOL[i] = new;
        LIBZAHL_POOL_ALLOC[i] = x;
    }

    *LIBZAHL_POOL[i].add(j) = a[0].chars;
}
