#![allow(unaligned_references)]
use std::os::raw::{c_int, c_void};

type size_t = usize;
type zahl_char_t = u64;
#[repr(C, packed)]struct zahl {
    sign: i32,
    padding__: i32,
    used: size_t,
    alloced: size_t,
    chars: *mut zahl_char_t,
};
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

union sigval {
    sival_int: i32,
    sival_ptr: *mut c_void,
}

union __sigaction_u {
    __sa_handler: extern "C" fn(c_int),
    __sa_sigaction: extern "C" fn(c_int, *mut libc::siginfo, *mut c_void),
}

extern crate libc;
extern crate libzahl_tmp_sub;

#[no_mangle]
#[no_mangle]
fn zzero(z: &z_t) -> bool {
    z[0].used == 0
}

#[no_mangle]
#[no_mangle]
fn zcmpmag(b: &z_t, c: &z_t) -> i32 {
    if b[0].used < c[0].used {
        -1
    } else if b[0].used > c[0].used {
        1
    } else {
        0
    }
}

#[no_mangle]
#[no_mangle]
fn zabs(a: &mut z_t, c: &z_t) {
    // Implementation of zabs function
}

#[no_mangle]
#[no_mangle]
fn zneg(a: &mut z_t, c: &z_t) {
    // Implementation of zneg function
}

#[no_mangle]
#[no_mangle]
fn zset(a: &mut z_t, c: &z_t) {
    // Implementation of zset function
}

#[no_mangle]
#[no_mangle]
fn zsub_impl(a: &mut z_t, b: &z_t, n: size_t) {
    // Implementation of zsub_impl function
}

#[no_mangle]
#[no_mangle]
fn libzahl_zsub_unsigned(a: &mut z_t, b: &z_t, c: &z_t) {
    let magcmp: i32;
    let n: size_t;

    if zzero(b) {
        zabs(a, c);
        zneg(a, a);
        return;
    } else if zzero(c) {
        zabs(a, b);
        return;
    }

    magcmp = zcmpmag(b, c);

    if magcmp <= 0 {
        if magcmp == 0 {
            a[0].sign = 0;
            return;
        }

        n = b[0].used;

        if a as *const _ == b as *const _ {
            zset(&mut libzahl_tmp_sub, b);
            if a as *const _ != c as *const _ {
                zset(a, c);
            }
            zsub_impl(a, &libzahl_tmp_sub, n);
        } else {
            if a as *const _ != c as *const _ {
                zset(a, c);
            }
            zsub_impl(a, b, n);
        }
    } else {
        n = c[0].used;

        if a as *const _ == c as *const _ {
            zset(&mut libzahl_tmp_sub, c);
            if a as *const _ != b as *const _ {
                zset(a, b);
            }
            zsub_impl(a, &libzahl_tmp_sub, n);
        } else {
            if a as *const _ != b as *const _ {
                zset(a, b);
            }
            zsub_impl(a, c, n);
        }

        a[0].sign = magcmp;
    }
}
