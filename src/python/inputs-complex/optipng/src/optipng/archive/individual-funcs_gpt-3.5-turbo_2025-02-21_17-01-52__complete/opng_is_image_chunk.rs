use std::mem::ManuallyDrop;

#[repr(C)]
union Wait {
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

#[repr(C)]
struct OSUnalignedU16 {
    __val: u16,
}

#[repr(C)]
struct OSUnalignedU32 {
    __val: u32,
}

#[repr(C)]
struct OSUnalignedU64 {
    __val: u64,
}

#[repr(C)]
struct timespec {
    tv_sec: i64,
    tv_nsec: i64,
}

#[repr(C)]
struct fd_set {
    fds_bits: [i32; 32],
}

#[repr(C)]
struct exception_context {
    penv: *mut [i32; 44],
    caught: i32,
    v: ExceptionContextV,
}

#[repr(C)]
struct ExceptionContextV {
    etmp: *const libc::c_char,
}

const OPNG_BITSET_ELT_MIN: u32 = 0;
const OPNG_BITSET_ELT_MAX: u32 = (std::mem::size_of::<opng_bitset_t>() as u32 * 8) - 1;

const INPUT_IS_PNG_FILE: u32 = 0x0001;
const INPUT_HAS_PNG_DATASTREAM: u32 = 0x0002;
const INPUT_HAS_PNG_SIGNATURE: u32 = 0x0004;
const INPUT_HAS_DIGITAL_SIGNATURE: u32 = 0x0008;
const INPUT_HAS_MULTIPLE_IMAGES: u32 = 0x0010;
const INPUT_HAS_APNG: u32 = 0x0020;
const INPUT_HAS_STRIPPED_DATA: u32 = 0x0040;
const INPUT_HAS_JUNK: u32 = 0x0080;
const INPUT_HAS_ERRORS: u32 = 0x0100;
const OUTPUT_NEEDS_NEW_FILE: u32 = 0x1000;
const OUTPUT_NEEDS_NEW_IDAT: u32 = 0x2000;
const OUTPUT_HAS_ERRORS: u32 = 0x4000;

static sig_tRNS: [u8; 4] = [0x74, 0x52, 0x4e, 0x53];

fn opng_is_image_chunk(chunk_type: &[u8]) -> bool {
    if (chunk_type[0] & 0x20) == 0 {
        return true;
    }
    if unsafe { libc::memcmp(chunk_type.as_ptr() as *const libc::c_void, sig_tRNS.as_ptr() as *const libc::c_void, 4) } == 0 {
        return true;
    }
    false
}
