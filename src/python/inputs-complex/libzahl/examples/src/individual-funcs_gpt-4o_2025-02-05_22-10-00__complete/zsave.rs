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

#[inline]
#[no_mangle]
#[no_mangle]
fn zsave(a: &ZT, buffer: Option<&mut [u8]>) -> SizeT {
    if let Some(buf) = buffer {
        let mut buf_ptr = buf.as_mut_ptr();
        unsafe {
            *(buf_ptr as *mut i64) = a[0].sign as i64;
            buf_ptr = buf_ptr.add(std::mem::size_of::<i64>());
            *(buf_ptr as *mut SizeT) = a[0].used;
            buf_ptr = buf_ptr.add(std::mem::size_of::<SizeT>());
            if !zzero(a) {
                (*a[0].chars.add(a[0].used + 2)) = 0;
                (*a[0].chars.add(a[0].used + 1)) = 0;
                (*a[0].chars.add(a[0].used)) = 0;
                libzahl_memcpy(buf_ptr as *mut ZahlCharT, a[0].chars, a[0].used);
            }
        }
    }
    std::mem::size_of::<i64>() + std::mem::size_of::<SizeT>()
        + if zzero(a) {
            0
        } else {
            ((a[0].used + 3) & !3) * std::mem::size_of::<ZahlCharT>()
        }
}

#[inline]
#[no_mangle]
#[no_mangle]
fn zzero(a: &ZT) -> bool {
    // Dummy implementation, replace with actual logic
    false
}

unsafe fn libzahl_memcpy(dest: *mut ZahlCharT, src: *const ZahlCharT, count: SizeT) {
    std::ptr::copy_nonoverlapping(src, dest, count);
}
