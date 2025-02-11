#![allow(unaligned_references)]
use num_bigint::BigInt;
use num_traits::{One, Zero};
use std::ops::{Shl, Shr};

enum ZError {
    ZeroPowZero,
    DivZero,
}

#[no_mangle]
#[no_mangle]
fn zpow(a: &mut BigInt, b: &BigInt, c: &BigInt) -> Result<(), ZError> {
    if c.is_zero() {
        if b.is_zero() {
            return Err(ZError::ZeroPowZero);
        }
        *a = BigInt::one();
        return Ok(());
    } else if b.is_zero() {
        *a = BigInt::zero();
        return Ok(());
    }

    let mut libzahl_tmp_pow_b = b.abs();
    let mut libzahl_tmp_pow_c = c.clone();
    *a = BigInt::one();

    let bits = libzahl_tmp_pow_c.bits();
    let n = bits / 64;
    let neg = b.is_negative() && c.is_odd();

    for i in 0..n {
        let mut x = (libzahl_tmp_pow_c.clone() >> (i * 64)) & BigInt::from(0xFFFFFFFFFFFFFFFFu64);
        for _ in 0..64 {
            if &x & BigInt::one() == BigInt::one() {
                *a *= &libzahl_tmp_pow_b;
            }
            libzahl_tmp_pow_b = &libzahl_tmp_pow_b * &libzahl_tmp_pow_b;
            x >>= 1;
        }
    }

    let mut x = libzahl_tmp_pow_c.clone() >> (n * 64);
    while x > BigInt::zero() {
        if &x & BigInt::one() == BigInt::one() {
            *a *= &libzahl_tmp_pow_b;
        }
        libzahl_tmp_pow_b = &libzahl_tmp_pow_b * &libzahl_tmp_pow_b;
        x >>= 1;
    }

    if neg {
        *a = -a.clone();
    }

    Ok(())
}
