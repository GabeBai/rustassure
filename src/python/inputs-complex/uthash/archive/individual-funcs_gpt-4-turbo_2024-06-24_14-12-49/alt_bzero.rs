use std::os::raw::{c_char, c_int, c_long, c_uint, c_ulong, c_void};
use std::ptr;

#[repr(C)]
struct LocaleData;

#[repr(C)]
struct LocaleStruct {
    locales: [*mut LocaleData; 13],
    ctype_b: *const u16,
    ctype_tolower: *const c_int,
    ctype_toupper: *const c_int,
    names: [*const c_char; 13],
}

type LocaleT = *mut LocaleStruct;

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
    quot: i64,
    rem: i64,
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
type UintmaxT = u64;
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
    fds_bits: [FdMask; 16],
}

#[repr(C)]
struct AtomicWideCounter {
    value64: u64,
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
    spins: i16,
    elision: i16,
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
    rwelision: i8,
    pad1: [u8; 7],
    pad2: u64,
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

#[repr(C)]
union PthreadAttrT {
    size: [c_char; 56],
    align: c_long,
}

#[repr(C)]
struct RandomData {
    fptr: *mut i32,
    rptr: *mut i32,
    state: *mut i32,
    rand_type: c_int,
    rand_deg: c_int,
    rand_sep: cint,
    end_ptr: *mut i32,
}

#[repr(C)]
struct Drand48Data {
    x: [u16; 3],
    old_x: [u16; 3],
    c: u16,
    init: u16,
    a: u64,
}

type ComparFnT = extern "C" fn(*const c_void, *const c_void) -> c_int;

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
    value: u32, // Union of u32 and [c_char; 4]
}

#[repr(C)]
struct FposT {
    pos: OffT,
    state: MbstateT,
}

#[repr(C)]
struct IoFile {
    flags: c_int,
    read_ptr: *mut c_char,
    read_end: *mut c_char,
    read_base: *mut c_char,
    write_base: *mut c_char,
    write_ptr: *mut c_char,
    write_end: *mut c_char,
    buf_base: *mut c_char,
    buf_end: *mut c_char,
    save_base: *mut c_char,
    backup_base: *mut c_char,
    save_end: *mut c_char,
    markers: *mut IoMarker,
    chain: *mut IoFile,
    fileno: c_int,
    flags2: c_int,
    old_offset: OffT,
    cur_column: u16,
    vtable_offset: i8,
    shortbuf: [c_char; 1],
    lock: *mut c_void,
    offset: Off64T,
    codecvt: *mut c_void,
    wide_data: *mut c_void,
    freeres_list: *mut IoFile,
    freeres_buf: *mut c_void,
    pad5: usize,
    mode: c_int,
    unused2: [u8; 60], // Adjusted size to match padding
}

extern "C" {
    static mut stdin: *mut IoFile;
    static mut stdout: *mut IoFile;
    static mut stderr: *mut IoFile;
}

static mut ALT_MALLOC_SIZES: [usize; 10] = [0; 10];
static mut ALT_MALLOC_BALANCE: c_int = 0;
static mut ALT_KEYCMP_COUNT: c_int = 0;
static mut ALT_BZERO_COUNT: c_int = 0;

extern "C" fn memset(s: *mut c_void, c: c_int, n: usize) -> *mut c_void;

fn alt_bzero(a: *mut c_void, n: usize) {
    unsafe {
        ALT_BZERO_COUNT += 1;
        memset(a, 0, n);
    }
}
