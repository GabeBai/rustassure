#![allow(unaligned_references)]
use libc::{c_int, size_t, uint64_t};

#[repr(C)]
#[repr(C, packed)]struct Zt {
    sign: c_int,
    padding__: c_int,
    used: size_t,
    alloced: size_t,
    chars: *mut uint64_t,
}

#[repr(C)]
enum Zerror {
    ZERROR_ERRNO_SET = 0,
    ZERROR_0_POW_0,
    ZERROR_0_DIV_0,
    ZERROR_DIV_0,
    ZERROR_NEGATIVE,
    ZERROR_INVALID_RADIX,
}

extern "C" {
#[no_mangle]
#[no_mangle]
    fn zsignum(a: *mut Zt) -> c_int;
#[no_mangle]
#[no_mangle]
    fn zzero(a: *mut Zt) -> c_int;
#[no_mangle]
#[no_mangle]
    fn zzero1(a: *mut Zt, b: *mut Zt) -> c_int;
#[no_mangle]
#[no_mangle]
    fn libzahl_failure(error: c_int);
#[no_mangle]
#[no_mangle]
    fn zset(a: *mut Zt, b: *mut Zt);
#[no_mangle]
#[no_mangle]
    fn zsetu(a: *mut Zt, b: uint64_t);
#[no_mangle]
#[no_mangle]
    fn zmodmul(a: *mut Zt, b: *mut Zt, c: *mut Zt, d: *mut Zt);
#[no_mangle]
#[no_mangle]
    fn zmod(a: *mut Zt, b: *mut Zt, c: *mut Zt);
#[no_mangle]
#[no_mangle]
    fn zmodsqr(a: *mut Zt, b: *mut Zt, c: *mut Zt);
}

static mut libzahl_tmp_pow_b: Zt = Zt {
    sign: 0,
    padding__: 0,
    used: 0,
    alloced: 0,
    chars: std::ptr::null_mut(),
};

static mut libzahl_tmp_pow_c: Zt = Zt {
    sign: 0,
    padding__: 0,
    used: 0,
    alloced: 0,
    chars: std::ptr::null_mut(),
};

static mut libzahl_tmp_pow_d: Zt = Zt {
    sign: 0,
    padding__: 0,
    used: 0,
    alloced: 0,
    chars: std::ptr::null_mut(),
};

unsafe fn zmodpow(a: *mut Zt, b: *mut Zt, c: *mut Zt, d: *mut Zt) {
    let mut i: size_t;
    let mut j: size_t;
    let mut n: size_t;
    let mut bits: size_t;
    let mut x: uint64_t;

    if zsignum(c) <= 0 {
        if zzero(c) != 0 {
            if zzero(b) != 0 {
                libzahl_failure(-Zerror::ZERROR_0_POW_0 as c_int);
            } else if zzero(d) != 0 {
                libzahl_failure(-Zerror::ZERROR_DIV_0 as c_int);
            }
            zsetu(a, 1);
        } else if zzero1(b, d) != 0 {
            libzahl_failure(-Zerror::ZERROR_DIV_0 as c_int);
        } else {
            (*a).sign = 0;
        }
        return;
    } else if zzero(d) != 0 {
        libzahl_failure(-Zerror::ZERROR_DIV_0 as c_int);
    } else if zzero(b) != 0 {
        (*a).sign = 0;
        return;
    }

    bits = zbits(c);
    n = bits >> 6;
    zmod(&mut libzahl_tmp_pow_b, b, d);
    zset(&mut libzahl_tmp_pow_c, c);
    zset(&mut libzahl_tmp_pow_d, d);
    zsetu(a, 1);

    for i in 0..n {
        x = (*libzahl_tmp_pow_c.chars.offset(i as isize));
        for j in 0..64 {
            if x & 1 != 0 {
                zmodmul(a, a, &mut libzahl_tmp_pow_b, &mut libzahl_tmp_pow_d);
            }
            zmodsqr(&mut libzahl_tmp_pow_b, &mut libzahl_tmp_pow_b, &mut libzahl_tmp_pow_d);
            x >>= 1;
        }
    }

    x = (*libzahl_tmp_pow_c.chars.offset(i as isize));
    while x != 0 {
        if x & 1 != 0 {
            zmodmul(a, a, &mut libzahl_tmp_pow_b, &mut libzahl_tmp_pow_d);
        }
        zmodsqr(&mut libzahl_tmp_pow_b, &mut libzahl_tmp_pow_b, &mut libzahl_tmp_pow_d);
        x >>= 1;
    }
}
