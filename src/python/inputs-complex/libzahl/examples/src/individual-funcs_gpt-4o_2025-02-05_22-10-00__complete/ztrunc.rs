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
    a.chars.resize(size, 0);
    a.alloced = size;
}

type ZT = [Zahl; 1];

#[no_mangle]
#[no_mangle]
fn zzero(b: &Zahl) -> bool {
    b.used == 0
}

#[no_mangle]
#[no_mangle]
fn ztrunc(a: &mut Zahl, b: &Zahl, bits: SizeT) {
    let mut bits = bits;
    if zzero(b) {
        a.sign = 0;
        return;
    }
    let chars = (bits + (64 - 1)) >> 6;
    a.used = if chars < b.used { chars } else { b.used };
    if a.used < chars {
        bits = 0;
    }
    if a as *const _ != b as *const _ {
        a.sign = b.sign;
        if a.alloced < a.used {
            libzahl_realloc(a, a.used);
        }
        a.chars[..a.used].copy_from_slice(&b.chars[..a.used]);
    }
    bits &= 64 - 1;
    if bits != 0 {
        a.chars[a.used - 1] &= ((1 as ZahlCharT) << bits) - 1;
    }
    while a.used > 0 && a.chars[a.used - 1] == 0 {
        a.used -= 1;
    }
    if a.used == 0 {
        a.sign = 0;
    }
}
