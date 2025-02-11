#![allow(unaligned_references)]
use std::os::raw::{c_int, c_void};

#[repr(C)]
#[repr(C, packed)]struct zahl {
    sign: c_int,
    padding__: c_int,
    used: usize,
    alloced: usize,
    chars: *mut zahl_char_t,
}

#[repr(C)]
#[repr(C, packed)]struct z_t([zahl; 1]);

#[repr(C)]
enum zprimality {
    NONPRIME = 0,
    PROBABLY_PRIME,
    PRIME,
}

#[repr(C)]
enum zranddev {
    FAST_RANDOM = 0,
    SECURE_RANDOM,
    DEFAULT_RANDOM,
    FASTEST_RANDOM,
    LIBC_RAND_RANDOM,
    LIBC_RANDOM_RANDOM,
    LIBC_RAND48_RANDOM,
}

#[repr(C)]
enum zranddist {
    QUASIUNIFORM = 0,
    UNIFORM,
    MODUNIFORM,
}

#[repr(C)]
enum zerror {
    ZERROR_ERRNO_SET = 0,
    ZERROR_0_POW_0,
    ZERROR_0_DIV_0,
    ZERROR_DIV_0,
    ZERROR_NEGATIVE,
    ZERROR_INVALID_RADIX,
}

#[repr(C)]
union sigval {
    sival_int: c_int,
    sival_ptr: *mut c_void,
}

#[repr(C)]
union __sigaction_u {
    __sa_handler: extern "C" fn(c_int),
    __sa_sigaction: extern "C" fn(c_int, *mut __siginfo, *mut c_void),
}

#[no_mangle]
#[no_mangle]
fn zrand_get_random_bits(r: &mut z_t, bits: usize, fun: extern "C" fn(*mut c_void, usize, *mut c_void), statep: *mut c_void) {
    let chars = (bits + 64 - 1) >> 6;
    let mut mask: zahl_char_t = 1;
    while r.0[0].alloced < chars {
        libzahl_realloc(&mut r.0[0], chars);
    }
    fun(r.0[0].chars as *mut c_void, chars * std::mem::size_of::<zahl_char_t>(), statep);
    let bits = bits & 64 - 1;
    mask <<= bits;
    mask -= 1;
    r.0[0].chars[chars - 1] &= mask;
    for n in (0..chars).rev() {
        if r.0[0].chars[n] != 0 {
            r.0[0].used = n + 1;
            r.0[0].sign = 1;
            return;
        }
    }
    r.0[0].sign = 0;
}

extern "C" {
#[no_mangle]
#[no_mangle]
    fn libzahl_realloc(z: *mut zahl, size: usize);
}

type zahl_char_t = u64;
#[repr(C, packed)]struct __siginfo;

#[no_mangle]
#[no_mangle]
fn main() {
    // Your main function code here
}
