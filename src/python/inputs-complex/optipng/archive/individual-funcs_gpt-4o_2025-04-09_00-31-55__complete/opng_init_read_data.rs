type __time_t = i64;
type __syscall_slong_t = i64;

struct timespec {
    tv_sec: __time_t,
    tv_nsec: __syscall_slong_t,
}

type __fd_mask = i64;

#[repr(C)]
struct fd_set {
    __fds_bits: [__fd_mask; 1024 / (8 * std::mem::size_of::<__fd_mask>())],
}

union pthread_attr_t {
    __size: [u8; 56],
    __align: i64,
}

type opng_bitset_t = u32;

const OPNG_BITSET_ELT_MIN: i32 = 0;
const OPNG_BITSET_ELT_MAX: i32 = (std::mem::size_of::<opng_bitset_t>() * 8) as i32 - 1;

type png_byte = u8;
type png_bytep = *mut png_byte;
type png_const_charp = *const i8;

struct png_struct_def;
type png_structp = *mut png_struct_def;

struct internal_state;

type jmp_buf = [__jmp_buf_tag; 1];

struct __jmp_buf_tag;

struct exception_context {
    penv: *mut jmp_buf,
    caught: i32,
    v: std::cell::UnsafeCell<ExceptionContextVolatile>,
}

struct ExceptionContextVolatile {
    etmp: *const i8,
}

const INPUT_IS_PNG_FILE: i32 = 0x0001;
const INPUT_HAS_PNG_DATASTREAM: i32 = 0x0002;
const INPUT_HAS_PNG_SIGNATURE: i32 = 0x0004;
const INPUT_HAS_DIGITAL_SIGNATURE: i32 = 0x0008;
const INPUT_HAS_MULTIPLE_IMAGES: i32 = 0x0010;
const INPUT_HAS_APNG: i32 = 0x0020;
const INPUT_HAS_STRIPPED_DATA: i32 = 0x0040;
const INPUT_HAS_JUNK: i32 = 0x0080;
const INPUT_HAS_ERRORS: i32 = 0x0100;
const OUTPUT_NEEDS_NEW_FILE: i32 = 0x1000;
const OUTPUT_NEEDS_NEW_IDAT: i32 = 0x2000;
const OUTPUT_HAS_ERRORS: i32 = 0x4000;

fn opng_init_read_data() {}
