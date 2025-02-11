#![allow(unaligned_references)]
pub type size_t = usize;
pub type uint64_t = u64;
pub type zahl_char_t = uint64_t;

#[repr(C, packed)]struct zahl {
    sign: i32,
    padding__: i32,
    used: size_t,
    alloced: size_t,
    chars: *mut zahl_char_t,
}

type z_t = [zahl; 1];

enum zprimality {
    NONPRIME = 0,
    PROBABLY_PRIME,
    PRIME,
}

enum zranddev {
    FAST_RANDOM = 0,
    SECURE_RANDOM,
    DEFAULT_RANDOM,
    FASTEST_RANDOM,
    LIBC_RAND_RANDOM,
    LIBC_RANDOM_RANDOM,
    LIBC_RAND48_RANDOM,
}

enum zranddist {
    QUASIUNIFORM = 0,
    UNIFORM,
    MODUNIFORM,
}

enum zerror {
    ZERROR_ERRNO_SET = 0,
    ZERROR_0_POW_0,
    ZERROR_0_DIV_0,
    ZERROR_DIV_0,
    ZERROR_NEGATIVE,
    ZERROR_INVALID_RADIX,
}

#[inline]
#[no_mangle]
#[no_mangle]
fn zmul(a: &mut z_t, b: &mut z_t, c: &mut z_t) {
    let mut b_sign;
    let mut c_sign;
    b_sign = b[0].sign;
    b[0].sign *= b_sign;
    c_sign = c[0].sign;
    c[0].sign *= c_sign;
    zmul_ll(a, b, c);
    c[0].sign = c_sign;
    b[0].sign = b_sign;
    a[0].sign = zsignum(b) * zsignum(c);
}

#[inline]
#[no_mangle]
#[no_mangle]
fn zsignum(z: &z_t) -> i32 {
    z[0].sign
}

#[no_mangle]
#[no_mangle]
fn zmul_ll(a: &mut z_t, b: &mut z_t, c: &mut z_t) {
    // Implementation of zmul_ll goes here
}
