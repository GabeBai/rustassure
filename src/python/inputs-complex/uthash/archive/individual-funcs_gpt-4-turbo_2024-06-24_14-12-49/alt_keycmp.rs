use std::cmp::Ordering;
use std::os::raw::{c_char, c_int, c_long, c_ulong, c_void};
use std::ptr;

#[repr(C)]
struct LocaleData {
    locales: [*mut c_void; 13],
    ctype_b: *const c_ushort,
    ctype_tolower: *const c_int,
    ctype_toupper: *const c_int,
    names: [*const c_char; 13],
}

type Locale = *mut LocaleData;

#[repr(C)]
struct DivT {
    quot: c_int,
    rem: c_int,
}

#[repr(C)]
struct LdivT {
    quot: c_long,
    rem: c_long,
}

#[repr(C)]
struct LldivT {
    quot: c_longlong,
    rem: c_longlong,
}

type UChar = u8;
type UShort = u16;
type UInt = u32;
type ULong = u64;
type Int8T = i8;
type UInt8T = u8;
type Int16T = i16;
type UInt16T = u16;
type Int32T = i32;
type UInt32T = u32;
type Int64T = i64;
type UInt64T = u64;
type QuadT = i64;
type UQuadT = u64;
type IntmaxT = i64;
type UIntmaxT = u64;
type DevT = u64;
type UidT = u32;
type GidT = u32;
type InoT = u64;
type ModeT = u32;
type NlinkT = u64;
type OffT = i64;
type Off64T = i64;
type PidT = c_int;
type FsidT = [c_int; 2];
type ClockT = i64;
type IdT = u32;
type TimeT = i64;
type SusecondsT = i64;
type DaddrT = c_int;
type KeyT = c_int;
type ClockidT = c_int;
type TimerT = *mut c_void;
type BlksizeT = i64;
type BlkcntT = i64;
type FsblkcntT = u64;
type FsfilcntT = u64;
type SsizeT = i64;
type SyscallSlongT = i64;
type LoffT = i64;
type CaddrT = *mut c_char;
type FdMask = i64;

#[repr(C)]
struct FdSet {
    fds_bits: [FdMask; 16], // Adjust size according to actual translation needs
}

#[repr(C)]
union AtomicWideCounter {
    value64: u64,
    value32: [u32; 2],
}

#[repr(C)]
struct PthreadInternalList {
    prev: *mut PthreadInternalList,
    next: *mut PthreadInternalList,
}

#[repr(C)]
struct PthreadMutex {
    lock: c_int,
    count: c_uint,
    owner: c_int,
    nusers: c_uint,
    kind: c_int,
    spins: c_short,
    elision: c_short,
    list: PthreadInternalList,
}

#[repr(C)]
struct PthreadRwlock {
    readers: c_uint,
    writers: c_uint,
    wrphase_futex: c_uint,
    writers_futex: c_uint,
    pad3: c_uint,
    pad4: c_uint,
    cur_writer: c_int,
    shared: c_int,
    rwelision: c_char,
    pad1: [c_uchar; 7],
    pad2: c_ulong,
    flags: c_uint,
}

#[repr(C)]
struct PthreadCond {
    wseq: AtomicWideCounter,
    g1_start: AtomicWideCounter,
    g_refs: [c_uint; 2],
    g_size: [c_uint; 2],
    g1_orig_size: c_uint,
    wrefs: c_uint,
    g_signals: [c_uint; 2],
}

#[repr(C)]
union PthreadAttrT {
    size: [c_char; 56],
    align: c_long,
}

#[repr(C)]
struct RandomData {
    fptr: *mut c_int,
    rptr: *mut c_int,
    state: *mut c_int,
    rand_type: c_int,
    rand_deg: c_int,
    rand_sep: c_int,
    end_ptr: *mut c_int,
}

#[repr(C)]
struct Drand48Data {
    x: [c_ushort; 3],
    old_x: [c_ushort; 3],
    c: c_ushort,
    init: c_ushort,
    a: u64,
}

type ComparFnT = extern "C" fn(*const c_void, *const c_void) -> c_int;

static mut ALT_MALLOC_SIZES: [usize; 10] = [0; 10];
static mut ALT_MALLOC_BALANCE: c_int = 0;
static mut ALT_KEYCMP_COUNT: c_int = 0;

extern "C" {
    fn memcmp(s1: *const c_void, s2: *const c_void, n: usize) -> c_int;
}

unsafe fn alt_keycmp(a: *const c_void, b: *const c_void, n: usize) -> c_int {
    ALT_KEYCMP_COUNT += 1;
    memcmp(a, b, n)
}
