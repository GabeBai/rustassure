#![allow(unaligned_references)]
use std::cmp::Ordering;

#[derive(Debug)]
#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
    used: usize,
    alloced: usize,
    chars: Vec<u64>,
}

type ZT = [Zahl; 1];

#[no_mangle]
#[no_mangle]
fn zzero(z: &ZT) -> bool {
    z[0].used == 0
}

#[no_mangle]
#[no_mangle]
fn zcmpmag(a: &mut ZT, b: &mut ZT) -> i32 {
    if zzero(a) {
        return if zzero(b) { 0 } else { -1 };
    }
    if zzero(b) {
        return 1;
    }

    let mut i = a[0].used - 1;
    let mut j = b[0].used - 1;

    while i > j {
        if a[0].chars[i] != 0 {
            return 1;
        }
        a[0].used -= 1;
        i -= 1;
    }

    while j > i {
        if b[0].chars[j] != 0 {
            return -1;
        }
        b[0].used -= 1;
        j -= 1;
    }

    while i > 0 && a[0].chars[i] == b[0].chars[i] {
        i -= 1;
    }

    match a[0].chars[i].cmp(&b[0].chars[i]) {
        Ordering::Less => -1,
        Ordering::Greater => 1,
        Ordering::Equal => 0,
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    let mut a = [Zahl {
        sign: 0,
        padding__: 0,
        used: 3,
        alloced: 3,
        chars: vec![0, 0, 1],
    }];

    let mut b = [Zahl {
        sign: 0,
        padding__: 0,
        used: 3,
        alloced: 3,
        chars: vec![0, 0, 2],
    }];

    let result = zcmpmag(&mut a, &mut b);
    println!("Comparison result: {}", result);
}
