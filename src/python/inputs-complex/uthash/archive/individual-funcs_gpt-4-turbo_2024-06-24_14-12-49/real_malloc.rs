use std::os::raw::{c_char, c_int, c_long, c_uint, c_ulong, c_void};

type size_t = c_ulong;
type ptrdiff_t = c_long;
type wchar_t = c_int;

#[repr(C)]
struct LocaleData {
    locales: [*mut LocaleData; 13],
    ctype_b: *const c_ushort,
    ctype_tolower: *const c_int,
    ctype_toupper: *const c_int,
    names: [*const c_char; 13],
}

type LocaleT = *mut LocaleData;

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

type UChar = c_uchar;
type UShort = c_ushort;
type UInt = c_uint;
type ULong = c_ulong;
type Int8T = c_schar;
type UInt8T = c_uchar;
type Int16T = c_short;
type UInt16T = c_ushort;
type Int32T = c_int;
type UInt32T = c_uint;
type Int64T = c_long;
type UInt64T = c_ulong;
type QuadT = c_long;
type UQuadT = c_ulong;
type IntmaxT = c_long;
type UIntmaxT = c_ulong;
type DevT = c_ulong;
type UidT = c_uint;
type GidT = c_uint;
type InoT = c_ulong;
type ModeT = c_uint;
type NlinkT = c_ulong;
type OffT = c_long;
type Off64T = c_long;
type PidT = c_int;
type FsidT = [c_int; 2];
type ClockT = c_long;
type IdT = c_uint;
type TimeT = c_long;
type SusecondsT = c_long;
type DaddrT = c_int;
type KeyT = c_int;
type ClockidT = c_int;
type TimerT = *mut c_void;
type BlksizeT = c_long;
type BlkcntT = c_long;
type FsblkcntT = c_ulong;
type FsfilcntT = c_ulong;
type SsizeT = c_long;
type SyscallSlongT = c_long;
type LoffT = Off64T;
type CaddrT = *mut c_char;
type FdMask = c_long;

#[repr(C)]
struct FdSet {
    fds_bits: [FdMask; 1024 / (8 * std::mem::size_of::<FdMask>())],
}

#[repr(C)]
union AtomicWideCounter {
    value64: c_ulonglong,
    value32: struct {
        low: c_uint,
        high: c_uint,
    },
}

#[repr(C)]
struct PthreadInternalList {
    prev: *mut PthreadInternalList,
    next: *mut PthreadInternalList,
}

#[repr(C)]
struct PthreadMutexS {
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
struct PthreadRwlockArchT {
    readers: c_uint,
    writers: c_uint,
    wrphase_futex: c_uint,
    writers_futex: c_uint,
    pad3: c_uint,
    pad4: c_uint,
    cur_writer: c_int,
    shared: c_int,
    rwelision: c_schar,
    pad1: [c_uchar; 7],
    pad2: c_ulong,
    flags: c_uint,
}

#[repr(C)]
struct PthreadCondS {
    wseq: AtomicWideCounter,
    g1_start: AtomicWideCounter,
    g_refs: [c_uint; 2],
    g_size: [c_uint; 2],
    g1_orig_size: c_uint,
    wrefs: c_uint,
    g_signals: [c_uint; 2],
}

#[repr(C, align(8))]
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
    a: c_ulonglong,
}

extern "C" {
    fn malloc(size: size_t) -> *mut c_void;
}

type ComparFnT = extern "C" fn(*const c_void, *const c_void) -> c_int;

type uint32_t = UInt32T;

#[repr(C)]
struct UtHashBucket {
    hh_head: *mut UtHashHandle,
    count: c_uint,
    expand_mult: c_uint,
}

#[repr(C)]
struct UtHashHandle {
    tbl: *mut UtHashTable,
    prev: *mut c_void,
    next: *mut c_void,
    hh_prev: *mut UtHashHandle,
    hh_next: *mut UtHashHandle,
    key: *const c_void,
    keylen: c_uint,
    hashv: c_uint,
}

type GnucVaList = *mut c_void;

#[repr(C)]
struct MbstateT {
    count: c_int,
    value: union {
        wch: c_uint,
        wchb: [c_char; 4],
    },
}

#[repr(C)]
struct FposT {
    pos: OffT,
    state: MbstateT,
}

struct IoFile;

#[repr(C)]
struct IoFile {
    flags: c_int,
    io_read_ptr: *mut c_char,
    io_read_end: *mut c_char,
    io_read_base: *mut c_char,
    io_write_base: *mut c_char,
    io_write_ptr: *mut c_char,
    io_write_end: *mut c_char,
    io_buf_base: *mut c_char,
    io_buf_end: *mut c_char,
    io_save_base: *mut c_char,
    io_backup_base: *mut c_char,
    io_save_end: *mut c_char,
    markers: *mut IoMarker,
    chain: *mut IoFile,
    fileno: c_int,
    flags2: c_int,
    old_offset: OffT,
    cur_column: c_ushort,
    vtable_offset: c_schar,
    shortbuf: [c_char; 1],
    lock: *mut IoLockT,
    offset: Off64T,
    codecvt: *mut IoCodecvt,
    wide_data: *mut IoWideData,
    freeres_list: *mut IoFile,
    freeres_buf: *mut c_void,
    pad5: size_t,
    mode: c_int,
    unused2: [c_char; 15 * std::mem::size_of::<c_int>() - 4 * std::mem::size_of::<*mut c_void>() - std::mem::size_of::<size_t>()],
}

extern "C" {
    static mut stdin: *mut IoFile;
    static mut stdout: *mut IoFile;
    static mut stderr: *mut IoFile;
}

static mut ALT_MALLOC_SIZES: [size_t; 10] = [0; 10];
static mut ALT_MALLOC_BALANCE: c_int = 0;
static mut ALT_KEYCMP_COUNT: c_int = 0;
static mut ALT_BZERO_COUNT: c_int = 0;

unsafe extern "C" fn real_malloc(n: size_t) -> *mut c_void {
    malloc(n)
}
