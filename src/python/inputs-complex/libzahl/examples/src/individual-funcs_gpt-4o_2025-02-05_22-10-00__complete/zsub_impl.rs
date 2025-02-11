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

#[inline(always)]
#[no_mangle]
#[no_mangle]
fn zsub_impl(a: &mut ZT, b: &ZT, n: usize) {
    let mut carry: ZahlCharT = 0;
    let mut tcarry: ZahlCharT;
    let mut i: usize = 0;
    while i < n {
        tcarry = if carry != 0 {
            (a[0].chars[i] <= b[0].chars[i]) as ZahlCharT
        } else {
            (a[0].chars[i] < b[0].chars[i]) as ZahlCharT
        };
        a[0].chars[i] = a[0].chars[i].wrapping_sub(b[0].chars[i]);
        a[0].chars[i] = a[0].chars[i].wrapping_sub(carry);
        carry = tcarry;
        i += 1;
    }
    if carry != 0 {
        while a[0].chars[i] == 0 {
            a[0].chars[i] = 18446744073709551615;
            i += 1;
        }
        if a[0].chars[i] == 1 {
            a[0].used -= 1;
        } else {
            a[0].chars[i] -= 1;
        }
    }
}
