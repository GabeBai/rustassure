use std::os::raw::{c_char, c_int, c_long, c_uint, c_ulong, c_ushort, c_void};
use std::ffi::CStr;

#[repr(C)]
struct LocaleData {
    // Assuming __locale_data is defined elsewhere or is opaque.
    locales: [*mut LocaleData; 13],
    ctype_b: *const c_ushort,
    ctype_tolower: *const c_int,
    ctype_toupper: *const c_int,
    names: [*const c_char; 13],
}

type LocaleT = *mut LocaleData;

extern "C" {
    fn strlen(s: *const c_char) -> usize;
}

type PtrdiffT = isize;
type WcharT = c_int;

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
type IntLeast8T = Int8T;
type UIntLeast8T = UInt8T;
type IntLeast16T = Int16T;
type UIntLeast16T = UInt16T;
type IntLeast32T = Int32T;
type UIntLeast32T = UInt32T;
type IntLeast64T = Int64T;
type UIntLeast64T = UInt64T;
type QuadT = i64;
type UQuadT = u64;
type IntmaxT = i64;
type UintmaxT = u64;
type DevT = u64;
type UidT = UInt;
type GidT = UInt;
type InoT = u64;
type ModeT = UInt;
type NlinkT = u64;
type OffT = i64;
type Off64T = i64;
type PidT = c_int;
type FsidT = [c_int; 2];
type ClockT = c_long;
type IdT = UInt;
type TimeT = c_long;
type SusecondsT = c_long;
type DaddrT = c_int;
type KeyT = c_int;
type ClockidT = c_int;
type TimerT = *mut c_void;
type BlksizeT = c_long;
type BlkcntT = c_long;
type FsblkcntT = u64;
type FsfilcntT = u64;
type SsizeT = isize;
type SyscallSlongT = i64;
type LoffT = Off64T;
type CaddrT = *mut c_char;
type Int32T = i32;

#[repr(C)]
struct SigsetT {
    val: [c_ulong; 16], // Assuming 1024 / (8 * sizeof(c_ulong)) == 16
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
    fds_bits: [FdMask; 16], // Assuming 1024 / (8 * sizeof(FdMask)) == 16
}

#[repr(C)]
union AtomicWideCounter {
    value64: u64,
    value32: [UInt; 2],
}

#[repr(C)]
struct PthreadInternalList {
    prev: *mut PthreadInternalList,
    next: *mut PthreadInternalList,
}

#[repr(C)]
struct PthreadMutexS {
    lock: c_int,
    count: UInt,
    owner: c_int,
    nusers: UInt,
    kind: c_int,
    spins: c_short,
    elision: c_short,
    list: PthreadInternalList,
}

#[repr(C)]
struct PthreadRwlockArchT {
    readers: UInt,
    writers: UInt,
    wrphase_futex: UInt,
    writers_futex: UInt,
    pad3: UInt,
    pad4: UInt,
    cur_writer: c_int,
    shared: c_int,
    rwelision: c_char,
    pad1: [c_uchar; 7],
    pad2: ULong,
    flags: UInt,
}

#[repr(C)]
struct PthreadCondS {
    wseq: AtomicWideCounter,
    g1_start: AtomicWideCounter,
    g_refs: [UInt; 2],
    g_size: [UInt; 2],
    g1_orig_size: UInt,
    wrefs: UInt,
    g_signals: [UInt; 2],
}

#[repr(C, align(8))]
union PthreadAttrT {
    size: [c_char; 56],
    align: c_long,
}

#[repr(C)]
struct RandomData {
    fptr: *mut Int32T,
    rptr: *mut Int32T,
    state: *mut Int32T,
    rand_type: c_int,
    rand_deg: c_int,
    rand_sep: c_int,
    end_ptr: *mut Int32T,
}

#[repr(C)]
struct Drand48Data {
    x: [UShort; 3],
    old_x: [UShort; 3],
    c: UShort,
    init: UShort,
    a: u64,
}

type ComparFnT = extern "C" fn(*const c_void, *const c_void) -> c_int;

#[repr(C)]
struct UtHashBucket {
    hh_head: *mut UtHashHandle,
    count: UInt,
    expand_mult: UInt,
}

#[repr(C)]
struct UtHashHandle {
    tbl: *mut UtHashTable,
    prev: *mut c_void,
    next: *mut c_void,
    hh_prev: *mut UtHashHandle,
    hh_next: *mut UtHashHandle,
    key: *const c_void,
    keylen: UInt,
    hashv: UInt,
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

type File = IoFile;

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
    vtable_offset: c_char,
    shortbuf: [c_char; 1],
    lock: *mut c_void,
    offset: Off64T,
    codecvt: *mut IoCodecvt,
    wide_data: *mut IoWideData,
    freeres_list: *mut IoFile,
    freeres_buf: *mut c_void,
    pad5: usize,
    mode: c_int,
    unused2: [c_char; 112], // Adjusted size to match padding
}

extern "C" {
    static mut stdin: *mut File;
    static mut stdout: *mut File;
    static mut stderr: *mut File;
    fn puts(s: *const c_char) -> c_int;
}

unsafe fn alt_strlen(s: *const c_char) -> usize {
    puts(b"alt_strlen\0".as_ptr() as *const c_char);
    strlen(s)
}
