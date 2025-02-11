#![allow(unaligned_references)]
type SizeT = usize;
type Uint64T = u64;
type ZahlCharT = Uint64T;

#[inline(always)]
#[no_mangle]
#[no_mangle]
fn libzahl_memcpy(d: &mut [ZahlCharT], s: &[ZahlCharT], n: SizeT) {
    match n {
        20 => d[20 - 1] = s[20 - 1],
        19 => d[19 - 1] = s[19 - 1],
        18 => d[18 - 1] = s[18 - 1],
        17 => d[17 - 1] = s[17 - 1],
        16 => d[16 - 1] = s[16 - 1],
        15 => d[15 - 1] = s[15 - 1],
        14 => d[14 - 1] = s[14 - 1],
        13 => d[13 - 1] = s[13 - 1],
        12 => d[12 - 1] = s[12 - 1],
        11 => d[11 - 1] = s[11 - 1],
        10 => d[10 - 1] = s[10 - 1],
        9 => d[9 - 1] = s[9 - 1],
        8 => d[8 - 1] = s[8 - 1],
        7 => d[7 - 1] = s[7 - 1],
        6 => d[6 - 1] = s[6 - 1],
        5 => d[5 - 1] = s[5 - 1],
        4 => d[4 - 1] = s[4 - 1],
        3 => d[3 - 1] = s[3 - 1],
        2 => d[2 - 1] = s[2 - 1],
        1 => d[1 - 1] = s[1 - 1],
        0 => (),
        _ => {
            let mut i = 0;
            while i < n {
                d[i + 0] = s[i + 0];
                d[i + 1] = s[i + 1];
                d[i + 2] = s[i + 2];
                d[i + 3] = s[i + 3];
                i += 4;
            }
        }
    }
}
