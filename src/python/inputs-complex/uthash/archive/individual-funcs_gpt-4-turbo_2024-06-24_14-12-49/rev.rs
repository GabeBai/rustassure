use std::os::raw::{c_char, c_int, c_long, c_uint, c_ulong, c_void};
use std::ptr;

type size_t = usize;
type ptrdiff_t = isize;
type wchar_t = i32;

#[repr(C)]
struct LocaleData {
    // Assuming __locale_data is defined elsewhere or is opaque.
    locales: [*mut LocaleData; 13],
    ctype_b: *const u16,
    ctype_tolower: *const i32,
    ctype_toupper: *const i32,
    names: [*const c_char; 13],
}

type LocaleT = *mut LocaleData;

#[repr(C)]
struct DivT {
    quot: i32,
    rem: i32,
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
type UIntmaxT = u64;
type DevT = u64;
type UidT = u32;
type GidT = u32;
type InoT = u64;
type ModeT = u32;
type NlinkT = u64;
type OffT = i64;
type Off64T = i64;
type PidT = i32;
type FsidT = [i32; 2];
type ClockT = i64;
type IdT = u32;
type TimeT = i64;
type SusecondsT = i64;
type DaddrT = i32;
type KeyT = i32;
type ClockidT = i32;
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
    fds_bits: [FdMask; 128],
}

#[repr(C)]
union AtomicWideCounter {
    value64: u64,
    value32: struct {
        low: u32,
        high: u32,
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
    rand_sep: c_int,
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
struct UTHashBucket {
    hh_head: *mut UTHashHandle,
    count: c_uint,
    expand_mult: c_uint,
}

#[repr(C)]
struct UTHashHandle {
    tbl: *mut c_void, // Assuming it points to UT_hash_table which is not defined here.
    prev: *mut c_void,
    next: *mut c_void,
    hh_prev: *mut UTHashHandle,
    hh_next: *mut UTHashHandle,
    key: *const c_void,
    keylen: c_uint,
    hashv: c_uint,
}

type GnucVaList = *mut c_void;

#[repr(C)]
struct MbstateT {
    count: c_int,
    value: union {
        wch: u32,
        wchb: [c_char; 4],
    },
}

#[repr(C)]
struct FposT {
    pos: OffT,
    state: MbstateT,
}

type FILE = _IO_FILE;

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
    markers: *mut _IO_marker,
    chain: *mut _IO_FILE,
    fileno: c_int,
    flags2: c_int,
    old_offset: OffT,
    cur_column: u16,
    vtable_offset: i8,
    shortbuf: [c_char; 1],
    lock: *mut c_void,
    offset: Off64T,
    codecvt: *mut _IO_codecvt,
    wide_data: *mut _IO_wide_data,
    freeres_list: *mut _IO_FILE,
    freeres_buf: *mut c_void,
    pad5: size_t,
    mode: c_int,
    unused2: [c_char; 15 * size_t - 4 * size_t - size_t],
}

extern "C" {
    static stdin: *mut FILE;
    static stdout: *mut FILE;
    static stderr: *mut FILE;
}

extern "C" fn printf(format: *const c_char, ...) -> c_int;

#[repr(C)]
struct ExampleUserT {
    id: c_int,
    cookie: c_int,
    hh: UTHashHandle,
}

unsafe extern "C" fn rev(a: *mut c_void, b: *mut c_void) -> c_int {
    let a = &*(a as *mut ExampleUserT);
    let b = &*(b as *mut ExampleUserT);
    printf(b"called for a:%d, b:%d\n\0".as_ptr() as *const c_char, a.id, b.id);
    (a.id - b.id)
}
