#![allow(unaligned_references)]
use std::os::raw::{c_long, c_ulong};

type int64_t = i64;
type uint64_t = u64;
type zahl_char_t = uint64_t;

#[repr(C, packed)]struct zahl {
    sign: i32,
    padding__: i32,
    used: usize,
    alloced: usize,
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

#[no_mangle]
#[no_mangle]
fn zsignum(a: &z_t) -> i32 {
    a[0].sign
}

#[no_mangle]
#[no_mangle]
fn zzero(a: &z_t) -> i32 {
    a[0].used == 0
}

#[no_mangle]
#[no_mangle]
fn zcmpi(a: &z_t, b: int64_t) -> i32 {
    if b == 0 {
        return zsignum(a);
    }
    if zzero(a) != 0 {
        return if b < 0 { 1 } else { -1 };
    }
    if b < 0 {
        if zsignum(a) > 0 {
            return 1;
        }
        while a[0].chars[a[0].used - 1] == 0 {
            a[0].used -= 1;
        }
        if a[0].used > 1 {
            return -1;
        }
        return if a[0].chars[0] > (-b as zahl_char_t) { -1 } else { if a[0].chars[0] < (-b as zahl_char_t) { 1 } else { 0 } };
    } else {
        if zsignum(a) < 0 {
            return -1;
        }
        while a[0].chars[a[0].used - 1] == 0 {
            a[0].used -= 1;
        }
        if a[0].used > 1 {
            return 1;
        }
        return if a[0].chars[0] < b as zahl_char_t { -1 } else { if a[0].chars[0] > b as zahl_char_t { 1 } else { 0 } };
    }
}
