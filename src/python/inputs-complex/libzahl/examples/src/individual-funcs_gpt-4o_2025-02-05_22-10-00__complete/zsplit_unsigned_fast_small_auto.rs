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

type ZT = [Zahl; 1];

#[inline]
#[no_mangle]
#[no_mangle]
fn zsplit_unsigned_fast_small_auto(high: &mut ZT, low: &mut ZT, a: &ZT, n: SizeT) {
    let mut mask: ZahlCharT = 1;
    mask = (mask << n) - 1;
    high[0].sign = 1;
    high[0].used = 1;
    high[0].chars[0] = a[0].chars[0] >> n;
    if a[0].used == 2 {
        high[0].chars[1] = a[0].chars[1] >> n;
        high[0].used += if high[0].chars[1] != 0 { 1 } else { 0 };
        let n = 64 - n;
        high[0].chars[0] |= (a[0].chars[1] & mask) << n;
    }
    low[0].sign = 1;
    low[0].used = 1;
    low[0].chars[0] = a[0].chars[0] & mask;
    if low[0].chars[0] == 0 {
        low[0].sign = 0;
    }
}
