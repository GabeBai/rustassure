use std::os::raw::{c_char, c_int, c_long, c_uint, c_ulong, c_ushort, c_void};

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
type Int8T = i8;
type UInt8T = u8;
type Int16T = i16;
type UInt16T = u16;
type Int32T = i32;
type UInt32T = u32;
type Int64T = i64;
type UInt64T = u64;
type QuadT = c_long;
type UQuadT = c_ulong;
type IntmaxT = c_long;
type UintmaxT = c_ulong;
type DevT = c_ulong;
type UidT = c_uint;
type GidT = c_uint;
type InoT = c_ulong;
type ModeT = c_uint;
type NlinkT = c_ulong;
type OffT = c_long;
type Off64T = c_long;
type PidT = c_int;
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

#[repr(C)]
struct SigsetT {
    val: [c_ulong; 1024 / (8 * std::mem::size_of::<c_ulong>())],
}

#[repr(C)]
struct Timeval {
    tv_sec: TimeT,
    tv_usec: SusecondsT,
}

#[repr(C)]
struct Timespec {
    tv_sec: TimeT,
    tv_nsec: SyscallSlongT,
}

type FdMask = c_long;

#[repr(C)]
struct FdSet {
    fds_bits: [FdMask; 1024 / (8 * std::mem::size_of::<FdMask>())],
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
    rwelision: c_char,
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
    value: [c_uint; 1], // Union of unsigned int and char[4]
}

#[repr(C)]
struct FposT {
    pos: OffT,
    state: MbstateT,
}

type File = _IO_FILE;

#[repr(C)]
struct _IO_FILE {
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
    markers: *mut _IO_MARKER,
    chain: *mut _IO_FILE,
    fileno: c_int,
    flags2: c_int,
    old_offset: OffT,
    cur_column: c_ushort,
    vtable_offset: c_char,
    shortbuf: [c_char; 1],
    lock: *mut c_void,
    offset: Off64T,
    codecvt: *mut _IO_CODECVT,
    wide_data: *mut _IO_WIDE_DATA,
    freeres_list: *mut _IO_FILE,
    freeres_buf: *mut c_void,
    pad5: usize,
    mode: c_int,
    unused2: [c_char; 15 * std::mem::size_of::<c_int>() - 4 * std::mem::size_of::<*mut c_void>() - std::mem::size_of::<usize>()],
}

extern "C" {
    static stdin: *mut FILE;
    static stdout: *mut FILE;
    static stderr: *mut FILE;
}

#[repr(C)]
struct ExampleUserT {
    id: c_int,
    hh: UtHashHandle,
    ah: UtHashHandle,
}

extern "C" fn evens(userv: *mut c_void) -> c_int {
    let user = unsafe { &*(userv as *mut ExampleUserT) };
    if user.id % 2 == 0 { 1 } else { 0 }
}
