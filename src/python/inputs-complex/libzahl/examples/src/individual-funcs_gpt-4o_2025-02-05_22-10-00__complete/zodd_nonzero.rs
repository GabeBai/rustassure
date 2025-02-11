#![allow(unaligned_references)]
type ZahlCharT = u64;

#[repr(C)]
#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
    used: usize,
    alloced: usize,
    chars: *mut ZahlCharT,
}

type ZT = [Zahl; 1];

#[inline]
unsafe fn zodd_nonzero(a: &ZT) -> i32 {
    ((*a)[0].chars.read() & 1) as i32
}
