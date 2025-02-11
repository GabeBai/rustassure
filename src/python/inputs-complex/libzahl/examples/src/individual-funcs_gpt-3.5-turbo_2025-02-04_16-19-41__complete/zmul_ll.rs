#![allow(unaligned_references)]
use std::os::raw::{c_int, c_void};

type size_t = usize;
type uint64_t = u64;
type zahl_char_t = uint64_t;

#[repr(C, packed)]struct Zahl {
    sign: c_int,
    padding__: c_int,
    used: size_t,
    alloced: size_t,
    chars: *mut zahl_char_t,
}

type Z_t = [Zahl; 1];

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

extern "C" {
#[no_mangle]
#[no_mangle]
    fn zadd_unsigned_assign(a: *mut Z_t, b: *mut Z_t);
#[no_mangle]
#[no_mangle]
    fn zsub_nonnegative_assign(a: *mut Z_t, b: *mut Z_t);
#[no_mangle]
#[no_mangle]
    fn zlsh(a: *mut Z_t, b: *mut Z_t, c: size_t);
}

#[no_mangle]
#[no_mangle]
fn zbits(a: *mut Z_t) -> size_t {
    // Implementation of zbits function
    unimplemented!()
}

#[no_mangle]
#[no_mangle]
fn zmul_ll_single_char(a: *mut Z_t, b: *mut Z_t, c: *mut Z_t) {
    // Implementation of zmul_ll_single_char function
    unimplemented!()
}

#[no_mangle]
#[no_mangle]
fn zinit_temp(a: *mut Z_t) {
    // Implementation of zinit_temp function
    unimplemented!()
}

#[no_mangle]
#[no_mangle]
fn zsplit_pz(a: *mut Z_t, b: *mut Z_t, c: *mut Z_t, d: size_t) {
    // Implementation of zsplit_pz function
    unimplemented!()
}

#[no_mangle]
#[no_mangle]
fn zfree_temp(a: *mut Z_t) {
    // Implementation of zfree_temp function
    unimplemented!()
}

#[no_mangle]
#[no_mangle]
fn zzero1(a: *mut Z_t, b: *mut Z_t) -> bool {
    // Implementation of zzero1 function
    unimplemented!()
}

#[no_mangle]
#[no_mangle]
fn zmul_ll(a: *mut Z_t, b: *mut Z_t, c: *mut Z_t) {
    let mut m: size_t;
    let mut m2: size_t;
    let mut b_high: Z_t;
    let mut b_low: Z_t;
    let mut c_high: Z_t;
    let mut c_low: Z_t;

    if zzero1(b, c) {
        unsafe {
            (*a)[0].sign = 0;
        }
        return;
    }

    m = zbits(b);
    m2 = if b == c { m } else { zbits(c) };

    if m + m2 <= 64 {
        zmul_ll_single_char(a, b, c);
        return;
    }

    m = if m > m2 { m } else { m2 };
    m2 = m >> 1;

    zinit_temp(&mut b_high as *mut Z_t);
    zinit_temp(&mut b_low as *mut Z_t);
    zinit_temp(&mut c_high as *mut Z_t);
    zinit_temp(&mut c_low as *mut Z_t);

    zsplit_pz(&mut b_high as *mut Z_t, &mut b_low as *mut Z_t, b, m2);
    zsplit_pz(&mut c_high as *mut Z_t, &mut c_low as *mut Z_t, c, m2);

    zmul_ll(a, &mut b_low as *mut Z_t, &mut c_low as *mut Z_t);
    zadd_unsigned_assign(&mut b_low as *mut Z_t, &mut b_high as *mut Z_t);
    zadd_unsigned_assign(&mut c_low as *mut Z_t, &mut c_high as *mut Z_t);
    zmul_ll(&mut b_low as *mut Z_t, &mut b_low as *mut Z_t, &mut c_low as *mut Z_t);
    zmul_ll(&mut c_low as *mut Z_t, &mut b_high as *mut Z_t, &mut c_high as *mut Z_t);
    zsub_nonnegative_assign(&mut b_low as *mut Z_t, a);
    zsub_nonnegative_assign(&mut b_low as *mut Z_t, &mut c_low as *mut Z_t);
    zlsh(&mut b_low as *mut Z_t, &mut b_low as *mut Z_t, m2);
    m2 <<= 1;
    zlsh(&mut c_low as *mut Z_t, &mut c_low as *mut Z_t, m2);
    zadd_unsigned_assign(a, &mut b_low as *mut Z_t);
    zadd_unsigned_assign(a, &mut c_low as *mut Z_t);
    zfree_temp(&mut c_low as *mut Z_t);
    zfree_temp(&mut c_high as *mut Z_t);
    zfree_temp(&mut b_low as *mut Z_t);
    zfree_temp(&mut b_high as *mut Z_t);
}
