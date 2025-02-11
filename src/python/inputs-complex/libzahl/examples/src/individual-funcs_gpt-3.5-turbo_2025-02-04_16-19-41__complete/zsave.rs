#![allow(unaligned_references)]
use std::mem;

type SizeT = usize;
type ZahlCharT = u64;

#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
    used: SizeT,
    alloced: SizeT,
    chars: *mut ZahlCharT,
}

type ZT = [Zahl; 1];

enum ZPrimality {
    NonPrime = 0,
    ProbablyPrime,
    Prime,
}

enum ZRandDev {
    FastRandom = 0,
    SecureRandom,
    DefaultRandom,
    FastestRandom,
    LibcRandRandom,
    LibcRandomRandom,
    LibcRand48Random,
}

enum ZRandDist {
    QuasiUniform = 0,
    Uniform,
    ModUniform,
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
fn zzero(a: &ZT) -> bool {
    a[0].used == 0
}

#[no_mangle]
#[no_mangle]
fn zsave(a: &ZT, buffer: *mut u8) -> SizeT {
    if !buffer.is_null() {
        let buf = buffer as *mut u8;
        unsafe {
            *(buf as *mut i32) = a[0].sign;
            let mut buf = buf.add(mem::size_of::<i32>());
            *(buf as *mut SizeT) = a[0].used;
            let mut buf = buf.add(mem::size_of::<SizeT>());
            if !zzero(a) {
                a[0].chars.add(a[0].used + 2).write(0);
                a[0].chars.add(a[0].used + 1).write(0);
                a[0].chars.add(a[0].used).write(0);
                let src = a[0].chars;
                let dst = buf as *mut ZahlCharT;
                for i in 0..a[0].used {
                    dst.add(i).write(src.add(i).read());
                }
            }
        }
    }
    mem::size_of::<i32>() + mem::size_of::<SizeT>() + if zzero(a) { 0 } else { ((a[0].used + 3) & !(3 as SizeT)) * mem::size_of::<ZahlCharT>() }
}
