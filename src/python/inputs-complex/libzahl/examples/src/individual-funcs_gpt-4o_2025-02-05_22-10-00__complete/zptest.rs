#![allow(unaligned_references)]
use num_bigint::BigUint;
use num_traits::{One, Zero};
use rand::Rng;

#[derive(Debug, PartialEq)]
enum ZPrimality {
    NonPrime,
    ProbablyPrime,
    Prime,
}

#[no_mangle]
#[no_mangle]
fn zptest(witness: Option<&mut BigUint>, n: &BigUint, t: usize) -> ZPrimality {
    if n <= &BigUint::from(3u64) {
        if n <= &BigUint::one() {
            if let Some(witness) = witness {
                *witness = n.clone();
            }
            return ZPrimality::NonPrime;
        } else {
            return ZPrimality::Prime;
        }
    }

    if n.is_even() {
        if let Some(witness) = witness {
            *witness = BigUint::from(2u64);
        }
        return ZPrimality::NonPrime;
    }

    let mut n1 = n - BigUint::one();
    let n4 = n - BigUint::from(4u64);
    let r = n1.trailing_zeros().unwrap() as usize;
    let mut d = &n1 >> r;

    let mut rng = rand::thread_rng();
    for _ in 0..t {
        let mut a = rng.gen_biguint_range(&BigUint::from(2u64), &n4);
        a += BigUint::from(2u64);
        let mut x = a.modpow(&d, n);

        if x == BigUint::one() || x == n1 {
            continue;
        }

        let mut i = 1;
        while i < r {
            x = (&x * &x) % n;
            if x == BigUint::one() {
                if let Some(witness) = witness {
                    *witness = a;
                }
                return ZPrimality::NonPrime;
            }
            if x == n1 {
                break;
            }
            i += 1;
        }

        if i == r {
            if let Some(witness) = witness {
                *witness = a;
            }
            return ZPrimality::NonPrime;
        }
    }

    ZPrimality::ProbablyPrime
}

#[no_mangle]
#[no_mangle]
fn main() {
    let n = BigUint::from(17u64);
    let mut witness = BigUint::zero();
    let result = zptest(Some(&mut witness), &n, 5);
    println!("{:?}, witness: {}", result, witness);
}
