#![allow(unaligned_references)]
use std::cmp::max;

type SizeT = usize;
type ZahlCharT = u64;

#[derive(Clone)]
#[repr(C, packed)]struct Zahl {
    sign: i32,
    used: SizeT,
    alloced: SizeT,
    chars: Vec<ZahlCharT>,
}

type ZT = Zahl;

#[no_mangle]
#[no_mangle]
fn zadd_unsigned_assign(a: &mut ZT, b: &ZT) {
    // Implement the function
}

#[no_mangle]
#[no_mangle]
fn zsub_nonnegative_assign(a: &mut ZT, b: &ZT) {
    // Implement the function
}

#[no_mangle]
#[no_mangle]
fn zlsh(a: &mut ZT, b: &ZT, shift: SizeT) {
    // Implement the function
}

#[no_mangle]
#[no_mangle]
fn zbits(z: &ZT) -> SizeT {
    // Implement the function
    0
}

#[no_mangle]
#[no_mangle]
fn zmul_ll_single_char(a: &mut ZT, b: &ZT, c: &ZT) {
    // Implement the function
}

#[no_mangle]
#[no_mangle]
fn zzero1(b: &ZT, c: &ZT) -> bool {
    // Implement the function
    false
}

#[no_mangle]
#[no_mangle]
fn zinit_temp() -> ZT {
    // Implement the function
    Zahl {
        sign: 0,
        used: 0,
        alloced: 0,
        chars: Vec::new(),
    }
}

#[no_mangle]
#[no_mangle]
fn zsplit_pz(high: &mut ZT, low: &mut ZT, z: &ZT, m2: SizeT) {
    // Implement the function
}

#[no_mangle]
#[no_mangle]
fn zfree_temp(_z: ZT) {
    // Implement the function
}

#[no_mangle]
#[no_mangle]
fn zmul_ll(a: &mut ZT, b: &ZT, c: &ZT) {
    let mut m;
    let mut m2;
    let mut b_high = zinit_temp();
    let mut b_low = zinit_temp();
    let mut c_high = zinit_temp();
    let mut c_low = zinit_temp();

    if zzero1(b, c) {
        a.sign = 0;
        return;
    }

    m = zbits(b);
    m2 = if b == c { m } else { zbits(c) };

    if m + m2 <= 64 {
        zmul_ll_single_char(a, b, c);
        return;
    }

    m = max(m, m2);
    m2 = m >> 1;

    zsplit_pz(&mut b_high, &mut b_low, b, m2);
    zsplit_pz(&mut c_high, &mut c_low, c, m2);

    zmul_ll(a, &b_low, &c_low);

    let mut temp_b_low = b_low.clone();
    zadd_unsigned_assign(&mut temp_b_low, &b_high);

    let mut temp_c_low = c_low.clone();
    zadd_unsigned_assign(&mut temp_c_low, &c_high);

    zmul_ll(&mut b_low, &temp_b_low, &temp_c_low);
    zmul_ll(&mut c_low, &b_high, &c_high);

    zsub_nonnegative_assign(&mut b_low, a);
    zsub_nonnegative_assign(&mut b_low, &c_low);

    zlsh(&mut b_low, &b_low.clone(), m2);
    m2 <<= 1;
    zlsh(&mut c_low, &c_low.clone(), m2);

    zadd_unsigned_assign(a, &b_low);
    zadd_unsigned_assign(a, &c_low);

    zfree_temp(c_low);
    zfree_temp(c_high);
    zfree_temp(b_low);
    zfree_temp(b_high);
}
