use std::mem;

type __int32_t = i32;
type __darwin_size_t = usize;
type __darwin_time_t = i64;
type size_t = __darwin_size_t;

struct __sbuf {
    _base: *mut u8,
    _size: i32,
}

struct __sFILEX;

union sigval {
    sival_int: i32,
    sival_ptr: *mut std::ffi::c_void,
}

union __sigaction_u {
    __sa_handler: extern "C" fn(i32),
    __sa_sigaction: extern "C" fn(i32, *mut libc::siginfo, *mut std::ffi::c_void),
}

type uint16_t = u16;
type uint32_t = u32;
type uint64_t = u64;

#[repr(packed)]
struct _OSUnalignedU16 {
    __val: u16,
}

#[repr(packed)]
struct _OSUnalignedU32 {
    __val: u32,
}

#[repr(packed)]
struct _OSUnalignedU64 {
    __val: u64,
}

union wait {
    w_status: i32,
    w_T: WaitT,
    w_S: WaitS,
}

#[repr(C)]
struct WaitT {
    w_Termsig: u32,
    w_Coredump: u32,
    w_Retcode: u32,
    w_Filler: u32,
}

#[repr(C)]
struct WaitS {
    w_Stopval: u32,
    w_Stopsig: u32,
    w_Filler: u32,
}

fn memcmp(s1: *const std::ffi::c_void, s2: *const std::ffi::c_void, n: size_t) -> i32 {
    unsafe { libc::memcmp(s1, s2, n) }
}

type opng_bitset_t = u32;

const OPNG_BITSET_ELT_MIN: i32 = 0;
const OPNG_BITSET_ELT_MAX: i32 = (std::mem::size_of::<opng_bitset_t>() as i32 * 8) - 1;

type png_byte = u8;
type png_bytep = *mut png_byte;
type png_const_charp = *const std::os::raw::c_char;

type png_struct = libc::c_void;
type png_structp = *mut png_struct;

struct fd_set {
    fds_bits: [__int32_t; (1024 / (std::mem::size_of::<__int32_t>() * 8)) + 1],
}

struct timespec {
    tv_sec: __darwin_time_t,
    tv_nsec: libc::c_long,
}

struct fssearchblock;
struct searchstate;
struct internal_state;

type jmp_buf = [i32; ((14 + 8 + 2) * 2)];

struct exception_context {
    penv: *mut jmp_buf,
    caught: i32,
    v: ExceptionContextV,
}

struct ExceptionContextV {
    etmp: *const std::os::raw::c_char,
}

const INPUT_IS_PNG_FILE: u16 = 0x0001;
const INPUT_HAS_PNG_DATASTREAM: u16 = 0x0002;
const INPUT_HAS_PNG_SIGNATURE: u16 = 0x0004;
const INPUT_HAS_DIGITAL_SIGNATURE: u16 = 0x0008;
const INPUT_HAS_MULTIPLE_IMAGES: u16 = 0x0010;
const INPUT_HAS_APNG: u16 = 0x0020;
const INPUT_HAS_STRIPPED_DATA: u16 = 0x0040;
const INPUT_HAS_JUNK: u16 = 0x0080;
const INPUT_HAS_ERRORS: u16 = 0x0100;
const OUTPUT_NEEDS_NEW_FILE: u16 = 0x1000;
const OUTPUT_NEEDS_NEW_IDAT: u16 = 0x2000;
const OUTPUT_HAS_ERRORS: u16 = 0x4000;

static sig_acTL: [png_byte; 4] = [0x61, 0x63, 0x54, 0x4c];
static sig_fcTL: [png_byte; 4] = [0x66, 0x63, 0x54, 0x4c];
static sig_fdAT: [png_byte; 4] = [0x66, 0x64, 0x41, 0x54];

fn opng_is_apng_chunk(chunk_type: png_bytep) -> i32 {
    if memcmp(chunk_type as *const std::ffi::c_void, &sig_acTL as *const _, 4) == 0 ||
        memcmp(chunk_type as *const std::ffi::c_void, &sig_fcTL as *const _, 4) == 0 ||
        memcmp(chunk_type as *const std::ffi::c_void, &sig_fdAT as *const _, 4) == 0 {
        return 1;
    }
    return 0;
}
