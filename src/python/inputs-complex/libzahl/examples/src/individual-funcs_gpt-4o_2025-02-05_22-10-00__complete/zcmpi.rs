#![allow(unaligned_references)]
type ZahlCharT = u64;

#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
    used: usize,
    alloced: usize,
    chars: Vec<ZahlCharT>,
}

type ZT = [Zahl; 1];

#[no_mangle]
#[no_mangle]
fn zsignum(a: &ZT) -> i32 {
    a[0].sign
}

#[no_mangle]
#[no_mangle]
fn zzero(a: &ZT) -> bool {
    a[0].used == 0 || (a[0].used == 1 && a[0].chars[0] == 0)
}

#[no_mangle]
#[no_mangle]
fn zcmpi(a: &mut ZT, b: i64) -> i32 {
    if b == 0 {
        return zsignum(a);
    }
    if zzero(a) {
        return if b < 0 { 1 } else { -1 };
    }
    if b < 0 {
        if zsignum(a) > 0 {
            return 1;
        }
        while a[0].used > 0 && a[0].chars[a[0].used - 1] == 0 {
            a[0].used -= 1;
        }
        if a[0].used > 1 {
            return -1;
        }
        let b_neg = -(b as i128) as ZahlCharT; // Convert to i128 to handle negation safely
        return if a[0].chars[0] > b_neg { -1 } else { if a[0].chars[0] < b_neg { 1 } else { 0 } };
    } else {
        if zsignum(a) < 0 {
            return -1;
        }
        while a[0].used > 0 && a[0].chars[a[0].used - 1] == 0 {
            a[0].used -= 1;
        }
        if a[0].used > 1 {
            return 1;
        }
        let b_pos = b as ZahlCharT;
        return if a[0].chars[0] < b_pos { -1 } else { if a[0].chars[0] > b_pos { 1 } else { 0 } };
    }
}
