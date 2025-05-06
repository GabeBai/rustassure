type __time_t = i64;
type __syscall_slong_t = i64;

#[repr(C)]
pub struct timespec {
    pub tv_sec: __time_t,
    pub tv_nsec: __syscall_slong_t,
}

type __fd_mask = i64;

#[repr(C)]
pub struct fd_set {
    pub __fds_bits: [__fd_mask; 128],
}

union pthread_attr_t {
    __size: [u8; 56],
    __align: i64,
}

type opng_bitset_t = u32;

const OPNG_BITSET_ELT_MIN: u32 = 0;
const OPNG_BITSET_ELT_MAX: u32 = (std::mem::size_of::<opng_bitset_t>() as u32 * 8) - 1;

type png_byte = u8;
type png_bytep = *mut png_byte;
type png_const_charp = *const i8;

pub struct png_struct;

type png_structp = *mut png_struct;

struct internal_state;

fn opng_strltrim(s: &str) -> &str {
    s.trim_start()
}

fn error(msg: &str, opt: &str, opt_arg: &str) {
    println!("{}", format!(msg, opt, opt_arg));
}

fn err_option_arg(opt: &str, opt_arg: Option<&str>) {
    match opt_arg {
        None => error("Missing argument for option {}", opt),
        Some(arg) if opng_strltrim(arg).is_empty() => error("Missing argument for option {}", opt),
        Some(arg) => error("Invalid argument for option {}: {}", opt, arg),
    }
}
