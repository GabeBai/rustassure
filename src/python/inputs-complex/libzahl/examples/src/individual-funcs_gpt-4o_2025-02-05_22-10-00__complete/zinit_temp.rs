#![allow(unaligned_references)]
use std::ptr;
use std::alloc::{self, Layout};

#[repr(C)]
#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
    used: usize,
    alloced: usize,
    chars: *mut u64,
}

type ZT = [Zahl; 1];

enum ZPrimality {
    NonPrime = 0,
    ProbablyPrime,
    Prime,
}

enum ZRandDev {
    FastRandom = 0,
    SecureRandom,
    DefaultRandom,
    FastestRandom,
    LibcRandRandom,
    LibcRandomRandom,
    LibcRand48Random,
}

enum ZRandDist {
    QuasiUniform = 0,
    Uniform,
    ModUniform,
}

enum ZError {
    ZErrorErrnoSet = 0,
    ZError0Pow0,
    ZError0Div0,
    ZErrorDiv0,
    ZErrorNegative,
    ZErrorInvalidRadix,
}

static mut LIBZAHL_TEMP_STACK: *mut *mut Zahl = ptr::null_mut();
static mut LIBZAHL_TEMP_STACK_HEAD: *mut *mut Zahl = ptr::null_mut();
static mut LIBZAHL_TEMP_STACK_END: *mut *mut Zahl = ptr::null_mut();

#[no_mangle]
#[no_mangle]
fn zinit_temp(a: &mut ZT) {
    zinit(a);
    unsafe {
        if LIBZAHL_TEMP_STACK_HEAD == LIBZAHL_TEMP_STACK_END {
            let n = LIBZAHL_TEMP_STACK_END.offset_from(LIBZAHL_TEMP_STACK) as usize;
            let old = LIBZAHL_TEMP_STACK;
            let new_size = 2 * n * std::mem::size_of::<*mut Zahl>();
            let layout = Layout::array::<*mut Zahl>(2 * n).unwrap();

            let new_ptr = if old.is_null() {
                alloc::alloc(layout) as *mut *mut Zahl
            } else {
                alloc::realloc(old as *mut u8, layout, new_size) as *mut *mut Zahl
            };

            if new_ptr.is_null() {
                libzahl_memfailure();
            } else {
                LIBZAHL_TEMP_STACK = new_ptr;
                LIBZAHL_TEMP_STACK_HEAD = LIBZAHL_TEMP_STACK.add(n);
                LIBZAHL_TEMP_STACK_END = LIBZAHL_TEMP_STACK_HEAD.add(n);
            }
        }
        *LIBZAHL_TEMP_STACK_HEAD = a.as_mut_ptr();
        LIBZAHL_TEMP_STACK_HEAD = LIBZAHL_TEMP_STACK_HEAD.add(1);
    }
}

#[no_mangle]
#[no_mangle]
fn zinit(a: &mut ZT) {
    // Initialize the Zahl structure
    a[0].sign = 0;
    a[0].padding__ = 0;
    a[0].used = 0;
    a[0].alloced = 0;
    a[0].chars = ptr::null_mut();
}

#[no_mangle]
#[no_mangle]
fn libzahl_memfailure() {
    panic!("Memory allocation failed");
}
