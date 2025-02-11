#![allow(unaligned_references)]
type ZahlCharT = u64;

#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
    used: usize,
    alloced: usize,
    chars: Vec<ZahlCharT>,
}

#[no_mangle]
#[no_mangle]
fn libzahl_realloc(a: &mut Zahl, size: usize) {
    a.chars.resize(size, 0);
    a.alloced = size;
}

type ZT = [Zahl; 1];

#[inline]
#[no_mangle]
#[no_mangle]
fn zsetu(a: &mut ZT, b: u64) {
    if b == 0 {
        a[0].sign = 0;
        return;
    }
    if a[0].alloced < 1 {
        libzahl_realloc(&mut a[0], 1);
    }
    a[0].sign = 1;
    a[0].chars[0] = b as ZahlCharT;
    a[0].used = 1;
}
