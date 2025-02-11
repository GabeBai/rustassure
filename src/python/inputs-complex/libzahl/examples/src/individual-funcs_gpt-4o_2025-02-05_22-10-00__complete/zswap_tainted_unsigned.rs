#![allow(unaligned_references)]
type SizeT = usize;
type Uint64T = u64;
type ZahlCharT = Uint64T;

#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
    used: SizeT,
    alloced: SizeT,
    chars: *mut ZahlCharT,
}

type ZT = [Zahl; 1];

#[inline(always)]
#[no_mangle]
#[no_mangle]
fn zswap_tainted_unsigned(a: &mut ZT, b: &mut ZT) {
    let mut t: ZT = [Zahl {
        sign: 0,
        padding__: 0,
        used: 0,
        alloced: 0,
        chars: std::ptr::null_mut(),
    }];
    t[0].used = a[0].used;
    a[0].used = b[0].used;
    b[0].used = t[0].used;

    t[0].chars = b[0].chars;
    b[0].chars = a[0].chars;
    a[0].chars = t[0].chars;
}
