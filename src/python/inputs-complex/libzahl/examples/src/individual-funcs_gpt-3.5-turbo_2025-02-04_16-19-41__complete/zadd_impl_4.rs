#![allow(unaligned_references)]
use std::convert::TryInto;

type ZahlCharT = u64;
type SizeT = usize;

#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
    used: SizeT,
    alloced: SizeT,
    chars: *mut ZahlCharT,
}

enum ZError {
    ZErrorErrnoSet = 0,
    ZError0Pow0,
    ZError0Div0,
    ZErrorDiv0,
    ZErrorNegative,
    ZErrorInvalidRadix,
}

#[no_mangle]
#[no_mangle]
fn zadd_impl_4(a: &mut Zahl, b: &Zahl, c: &Zahl, n: SizeT) {
    let mut carry: ZahlCharT = 0;
    let mut tcarry: ZahlCharT;
    let ac: *mut ZahlCharT = a.chars;
    let bc: *mut ZahlCharT = b.chars;
    let cc: *mut ZahlCharT = c.chars;

    let mut i: SizeT = 0;
    while i < n {
        tcarry = bc.add(i).wrapping_add(*cc.add(i).try_into().unwrap());
        carry = tcarry | (*ac.add(i)).wrapping_add(carry).try_into().unwrap();
        i += 1;
    }

    while carry != 0 {
        carry = (*ac.add(i)).wrapping_add(1).try_into().unwrap();
        i += 1;
    }

    if a.used < i {
        a.used = i;
    }
}
