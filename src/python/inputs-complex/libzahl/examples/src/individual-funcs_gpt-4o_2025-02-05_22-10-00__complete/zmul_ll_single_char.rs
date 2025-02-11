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

#[inline(always)]
#[no_mangle]
#[no_mangle]
fn zmul_ll_single_char(a: &mut ZT, b: &ZT, c: &ZT) {
    if a[0].alloced < 1 {
        libzahl_realloc(&mut a[0], 1);
    }
    a[0].used = 1;
    a[0].chars[0] = b[0].chars[0] * c[0].chars[0];
    a[0].sign = 1;
}
