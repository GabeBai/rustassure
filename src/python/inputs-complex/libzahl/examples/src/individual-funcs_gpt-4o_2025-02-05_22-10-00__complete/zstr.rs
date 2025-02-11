#![allow(unaligned_references)]
use std::ptr;
use std::alloc::{alloc, Layout};
use std::cmp;

#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
    used: usize,
    alloced: usize,
    chars: *mut u64,
}

enum Zprimality {
    Nonprime = 0,
    ProbablyPrime,
    Prime,
}

enum Zranddev {
    FastRandom = 0,
    SecureRandom,
    DefaultRandom,
    FastestRandom,
    LibcRandRandom,
    LibcRandomRandom,
    LibcRand48Random,
}

enum Zranddist {
    Quasiuniform = 0,
    Uniform,
    Moduniform,
}

enum Zerror {
    ZerrorErrnoSet = 0,
    Zerror0Pow0,
    Zerror0Div0,
    ZerrorDiv0,
    ZerrorNegative,
    ZerrorInvalidRadix,
}

extern "C" {
#[no_mangle]
#[no_mangle]
    fn zabs(dest: *mut Zahl, src: *const Zahl);
#[no_mangle]
#[no_mangle]
    fn zdivmod(q: *mut Zahl, r: *mut Zahl, a: *const Zahl, b: *const Zahl);
#[no_mangle]
#[no_mangle]
    fn zzero(a: *const Zahl) -> i32;
#[no_mangle]
#[no_mangle]
    fn zsignum(a: *const Zahl) -> i32;
#[no_mangle]
#[no_mangle]
    fn sprintint_fix(buf: *mut u8, num: u64);
#[no_mangle]
#[no_mangle]
    fn sprintint_min(buf: *mut u8, num: u64) -> usize;
#[no_mangle]
#[no_mangle]
    fn libzahl_memfailure();
}

static mut LIBZAHL_TMP_STR_NUM: Zahl = Zahl {
    sign: 0,
    padding__: 0,
    used: 0,
    alloced: 0,
    chars: std::ptr::null_mut(),
};

static mut LIBZAHL_TMP_STR_REM: Zahl = Zahl {
    sign: 0,
    padding__: 0,
    used: 0,
    alloced: 0,
    chars: std::ptr::null_mut(),
};

static mut LIBZAHL_CONST_1E19: Zahl = Zahl {
    sign: 0,
    padding__: 0,
    used: 0,
    alloced: 0,
    chars: std::ptr::null_mut(),
};

static mut LIBZAHL_TEMP_ALLOCATION: *mut u8 = std::ptr::null_mut();

unsafe fn zstr(a: *const Zahl, mut b: *mut u8, mut n: usize) -> *mut u8 {
    let mut buf = [0u8; 19 + 1];
    let mut len;
    let mut neg;
    let mut last = 0;
    let mut tot = 0;
    let mut overridden = 0u8;

    if zzero(a) != 0 {
        if b.is_null() {
            b = alloc(Layout::array::<u8>(2).unwrap()) as *mut u8;
            if b.is_null() {
                libzahl_memfailure();
            }
        }
        *b = b'0';
        *b.add(1) = 0;
        return b;
    }

    if n == 0 {
        n = (20 * 64 / 64 + (64 == 8)) * (*a).used;
    }

    if b.is_null() {
        b = alloc(Layout::array::<u8>(n + 1).unwrap()) as *mut u8;
        if b.is_null() {
            libzahl_memfailure();
        }
        LIBZAHL_TEMP_ALLOCATION = b;
    }

    neg = (zsignum(a) < 0) as usize;
    zabs(&mut LIBZAHL_TMP_STR_NUM, a);
    *b = b'-';
    b = b.add(neg);
    n -= neg;
    last = if n > 19 { n - 19 } else { 0 };

    loop {
        zdivmod(
            &mut LIBZAHL_TMP_STR_NUM,
            &mut LIBZAHL_TMP_STR_REM,
            &LIBZAHL_TMP_STR_NUM,
            &LIBZAHL_CONST_1E19,
        );

        if zzero(&LIBZAHL_TMP_STR_NUM) == 0 {
            len = sprintint_min(buf.as_mut_ptr(), *LIBZAHL_TMP_STR_REM.chars);
            if tot > 0 {
                ptr::copy_nonoverlapping(buf.as_ptr(), b, len);
                ptr::copy(b.add(last), b.add(len), tot + 1);
            } else {
                ptr::copy_nonoverlapping(buf.as_ptr(), b, len + 1);
            }
            break;
        } else {
            sprintint_fix(b.add(n), if zzero(&LIBZAHL_TMP_STR_REM) != 0 { 0 } else { *LIBZAHL_TMP_STR_REM.chars });
            *b.add(n + 19) = overridden;
            overridden = *b.add(n);
            n = if last > 19 { last - 19 } else { 0 };
            tot += 19;
        }
    }

    LIBZAHL_TEMP_ALLOCATION = std::ptr::null_mut();
    b.sub(neg)
}
