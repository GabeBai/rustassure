#![allow(unaligned_references)]
type SizeT = usize;
type Uint64T = u64;
type ZahlCharT = Uint64T;

#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
    used: SizeT,
    alloced: SizeT,
    chars: Vec<ZahlCharT>,
}

#[no_mangle]
#[no_mangle]
fn libzahl_realloc(a: &mut Zahl, size: SizeT) {
    if a.alloced < size {
        a.chars.resize(size, 0);
        a.alloced = size;
    }
}

#[no_mangle]
#[no_mangle]
fn zlsh(a: &mut Zahl, b: &Zahl, bits: SizeT) {
    let mut carry: ZahlCharT = 0;
    let mut tcarry: ZahlCharT;
    if zzero(b) {
        a.sign = 0;
        return;
    }
    let chars = bits >> 6;
    let bits = bits & (64 - 1);
    let cbits = 64 - bits;
    libzahl_realloc(a, b.used + chars + 1);
    if a as *const _ == b as *const _ {
        a.chars.copy_within(0..b.used, chars);
    } else {
        a.chars.splice(chars..chars + b.used, b.chars.iter().cloned());
    }
    a.chars.splice(0..chars, std::iter::repeat(0).take(chars));
    a.used = b.used + chars;
    if bits != 0 {
        for i in chars..a.used {
            tcarry = a.chars[i] >> cbits;
            a.chars[i] <<= bits;
            a.chars[i] |= carry;
            carry = tcarry;
        }
        if carry != 0 {
            a.chars.push(carry);
            a.used += 1;
        }
    }
    a.sign = zsignum(b);
}

#[no_mangle]
#[no_mangle]
fn zzero(b: &Zahl) -> bool {
    b.used == 0
}

#[no_mangle]
#[no_mangle]
fn zsignum(b: &Zahl) -> i32 {
    if b.used == 0 {
        0
    } else {
        b.sign
    }
}
