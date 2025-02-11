#![allow(unaligned_references)]
use libc::{c_void, size_t, uint64_t};

#[repr(C)]
#[repr(C, packed)]struct zahl {
    sign: i32,
    padding__: i32,
    used: size_t,
    alloced: size_t,
    chars: *mut uint64_t,
}

type z_t = [zahl; 1];

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

extern "C" {
#[no_mangle]
#[no_mangle]
    fn zrand_fd(data: *mut c_void, size: size_t, state: *mut c_void);
#[no_mangle]
#[no_mangle]
    fn zrand_libc_rand(data: *mut c_void, size: size_t, state: *mut c_void);
#[no_mangle]
#[no_mangle]
    fn zrand_libc_random(data: *mut c_void, size: size_t, state: *mut c_void);
#[no_mangle]
#[no_mangle]
    fn zrand_libc_rand48(data: *mut c_void, size: size_t, state: *mut c_void);
#[no_mangle]
#[no_mangle]
    fn libzahl_failure(error_code: i32);
#[no_mangle]
#[no_mangle]
    fn zcmpmag(a: *mut z_t, b: *mut z_t) -> i32;
#[no_mangle]
#[no_mangle]
    fn zadd(result: *mut z_t, a: *mut z_t, b: *mut z_t);
#[no_mangle]
#[no_mangle]
    fn zsub(result: *mut z_t, a: *mut z_t, b: *mut z_t);
#[no_mangle]
#[no_mangle]
    fn zmul(result: *mut z_t, a: *mut z_t, b: *mut z_t);
#[no_mangle]
#[no_mangle]
    fn zrsh(result: *mut z_t, a: *mut z_t, bits: size_t);
#[no_mangle]
#[no_mangle]
    fn zbits(n: *mut z_t) -> size_t;
#[no_mangle]
#[no_mangle]
    fn zzero(n: *mut z_t) -> i32;
#[no_mangle]
#[no_mangle]
    fn zsignum(n: *mut z_t) -> i32;
#[no_mangle]
#[no_mangle]
    fn zrand_get_random_bits(r: *mut z_t, bits: size_t, random_fun: fn(*mut c_void, size_t, *mut c_void), statep: *mut c_void);
}

#[no_mangle]
#[no_mangle]
fn zrand(r: *mut z_t, dev: zranddev, dist: zranddist, n: *mut z_t) {
    let mut pathname: *const i8 = std::ptr::null();
    let mut bits: size_t = 0;
    let mut fd: i32 = -1;
    let mut statep: *mut c_void = std::ptr::null();
    let mut random_fun: fn(*mut c_void, size_t, *mut c_void) = zrand_fd;

    match dev {
        zranddev::FAST_RANDOM => pathname = "/dev/urandom\0".as_ptr() as *const i8,
        zranddev::SECURE_RANDOM => pathname = "/dev/random\0".as_ptr() as *const i8,
        zranddev::LIBC_RAND_RANDOM => random_fun = zrand_libc_rand,
        zranddev::DEFAULT_RANDOM | zranddev::FASTEST_RANDOM | zranddev::LIBC_RANDOM_RANDOM => random_fun = zrand_libc_random,
        zranddev::LIBC_RAND48_RANDOM => random_fun = zrand_libc_rand48,
        _ => libzahl_failure(22),
    }

    if zzero(n) != 0 {
        unsafe {
            (*r).sign = 0;
        }
        return;
    }

    if !pathname.is_null() {
        fd = unsafe { libc::open(pathname, 0) };
        if fd < 0 {
            libzahl_failure(unsafe { *libc::__error() });
        }
        statep = &mut fd as *mut i32 as *mut c_void;
    }

    match dist {
        zranddist::QUASIUNIFORM => {
            if zsignum(n) < 0 {
                libzahl_failure(-ZERROR_NEGATIVE as i32);
            }
            bits = unsafe { zbits(n) };
            unsafe {
                zrand_get_random_bits(r, bits, random_fun, statep);
            }
            while unsafe { zcmpmag(r, n) > 0 } {
                unsafe {
                    zrand_get_random_bits(r, bits, random_fun, statep);
                }
            }
            unsafe {
                zadd(r, r, &mut libzahl_const_1);
                zmul(r, r, n);
                zrsh(r, r, bits);
            }
        }
        zranddist::UNIFORM => {
            if zsignum(n) < 0 {
                libzahl_failure(-ZERROR_NEGATIVE as i32);
            }
            bits = unsafe { zbits(n) };
            unsafe {
                zrand_get_random_bits(r, bits, random_fun, statep);
            }
        }
        zranddist::MODUNIFORM => {
            if zsignum(n) < 0 {
                libzahl_failure(-ZERROR_NEGATIVE as i32);
            }
            bits = unsafe { zbits(n) };
            unsafe {
                zrand_get_random_bits(r, bits, random_fun, statep);
            }
            if unsafe { zcmpmag(r, n) > 0 } {
                unsafe {
                    zsub(r, r, n);
                }
            }
        }
        _ => libzahl_failure(22),
    }

    if fd >= 0 {
        unsafe {
            libc::close(fd);
        }
    }
}
