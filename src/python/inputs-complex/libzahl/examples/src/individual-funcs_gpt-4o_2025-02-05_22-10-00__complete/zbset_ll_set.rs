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

#[inline]
#[no_mangle]
#[no_mangle]
fn zzero(a: &ZT) -> bool {
    a[0].used == 0
}

#[no_mangle]
#[no_mangle]
fn zbset_ll_set(a: &mut ZT, bit: SizeT) {
    let mut mask: ZahlCharT = 1;
    let chars = bit >> 6;
    if zzero(a) {
        a[0].used = 0;
        a[0].sign = 1;
    }
    if chars >= a[0].used {
        if a[0].alloced < chars + 1 {
            libzahl_realloc(&mut a[0], chars + 1);
        }
        a[0].chars[a[0].used..chars + 1].fill(0);
        a[0].used = chars + 1;
    }
    let bit = bit & (64 - 1);
    mask <<= bit;
    a[0].chars[chars] |= mask;
}
