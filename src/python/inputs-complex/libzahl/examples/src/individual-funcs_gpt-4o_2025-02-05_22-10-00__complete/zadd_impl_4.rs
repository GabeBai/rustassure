#![allow(unaligned_references)]
use std::ops::AddAssign;

#[derive(Debug)]
#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
    used: usize,
    alloced: usize,
    chars: Vec<u64>,
}

#[no_mangle]
#[no_mangle]
fn zadd_impl_4(a: &mut Zahl, b: &Zahl, c: &Zahl, n: usize) {
    let mut carry: u64 = 0;
    let ac = &mut a.chars;
    let bc = &b.chars;
    let cc = &c.chars;

    for i in 0..n {
        let (sum1, overflow1) = bc[i].overflowing_add(cc[i]);
        let (sum2, overflow2) = sum1.overflowing_add(carry);
        ac[i] = sum2;
        carry = (overflow1 as u64) | (overflow2 as u64);
    }

    let mut i = n;
    while carry != 0 {
        let (sum, overflow) = ac[i].overflowing_add(1);
        ac[i] = sum;
        carry = overflow as u64;
        i += 1;
    }

    if a.used < i {
        a.used = i;
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    let mut a = Zahl {
        sign: 0,
        padding__: 0,
        used: 0,
        alloced: 10,
        chars: vec![0; 10],
    };

    let b = Zahl {
        sign: 0,
        padding__: 0,
        used: 0,
        alloced: 10,
        chars: vec![1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
    };

    let c = Zahl {
        sign: 0,
        padding__: 0,
        used: 0,
        alloced: 10,
        chars: vec![10, 9, 8, 7, 6, 5, 4, 3, 2, 1],
    };

    zadd_impl_4(&mut a, &b, &c, 10);

    println!("{:?}", a);
}
