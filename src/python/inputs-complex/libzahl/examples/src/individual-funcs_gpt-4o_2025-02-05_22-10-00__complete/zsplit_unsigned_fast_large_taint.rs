#![allow(unaligned_references)]
use std::ptr;

type SizeT = usize;
type Uint64T = u64;
type ZahlCharT = Uint64T;

#[derive(Debug, Clone, Copy)]
#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
    used: SizeT,
    alloced: SizeT,
    chars: *mut ZahlCharT,
}

type ZT = [Zahl; 1];

#[derive(Debug, Clone, Copy)]
enum ZPrimality {
    NonPrime = 0,
    ProbablyPrime,
    Prime,
}

#[derive(Debug, Clone, Copy)]
enum ZRandDev {
    FastRandom = 0,
    SecureRandom,
    DefaultRandom,
    FastestRandom,
    LibcRandRandom,
    LibcRandomRandom,
    LibcRand48Random,
}

#[derive(Debug, Clone, Copy)]
enum ZRandDist {
    QuasiUniform = 0,
    Uniform,
    ModUniform,
}

#[derive(Debug, Clone, Copy)]
enum ZError {
    ZErrorErrnoSet = 0,
    ZError0Pow0,
    ZError0Div0,
    ZErrorDiv0,
    ZErrorNegative,
    ZErrorInvalidRadix,
}

union Sigval {
    sival_int: i32,
    sival_ptr: *mut std::ffi::c_void,
}

union SigactionU {
    sa_handler: Option<extern "C" fn(i32)>,
    sa_sigaction: Option<extern "C" fn(i32, *mut std::ffi::c_void, *mut std::ffi::c_void)>,
}

impl SigactionU {
    // Safe accessors for the union fields
#[no_mangle]
#[no_mangle]
    fn sa_handler(&self) -> Option<extern "C" fn(i32)> {
        unsafe { self.sa_handler }
    }

#[no_mangle]
#[no_mangle]
    fn sa_sigaction(&self) -> Option<extern "C" fn(i32, *mut std::ffi::c_void, *mut std::ffi::c_void)> {
        unsafe { self.sa_sigaction }
    }
}

#[no_mangle]
#[no_mangle]
fn zsplit_unsigned_fast_large_taint(high: &mut Zahl, low: &mut Zahl, a: &Zahl, n: SizeT) {
    let n = n >> 6;
    high.sign = 1;
    high.used = a.used - n;
    high.chars = unsafe { a.chars.add(n) };
    low.sign = 1;
    low.used = n;
    low.chars = a.chars;

    // Equivalent to the C macro for trimming zeros
    while low.used > 0 && unsafe { *low.chars.add(low.used - 1) } == 0 {
        low.used -= 1;
    }
    if low.used == 0 {
        low.sign = 0;
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    let mut high = Zahl {
        sign: 0,
        padding__: 0,
        used: 0,
        alloced: 0,
        chars: ptr::null_mut(),
    };
    let mut low = high;
    let a = high;
    zsplit_unsigned_fast_large_taint(&mut high, &mut low, &a, 64);
}
