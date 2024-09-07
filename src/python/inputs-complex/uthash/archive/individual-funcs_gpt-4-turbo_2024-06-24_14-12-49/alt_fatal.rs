type SizeT = usize;
type VaList = std::ffi::VaList;
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
type UidT = u32;
type GidT = u32;
type InoT = u64;
type ModeT = u32;
type NlinkT = u64;
type OffT = i64;
type Off64T = i64;
type PidT = i32;
type FsidT = (i32, i32); // Simplified representation
type ClockT = i64;
type IdT = u32;
type TimeT = i64;
type SusecondsT = i64;
type DaddrT = i32;
type KeyT = i32;
type ClockidT = i32;
type TimerT = *mut std::ffi::c_void;
type BlksizeT = i64;
type BlkcntT = i64;
type FsblkcntT = u64;
type FsfilcntT = u64;
type SsizeT = i64;
type SyscallSlongT = i64;
type LoffT = Off64T;
type CaddrT = *mut i8;

#[repr(C)]
struct MbstateT {
    count: i32,
    value: MbstateTUnion,
}

#[repr(C)]
union MbstateTUnion {
    wch: u32,
    wchb: [u8; 4],
}

#[repr(C)]
struct FposT {
    pos: OffT,
    state: MbstateT,
}

type File = IoFile;

#[repr(C)]
struct IoFile {
    flags: i32,
    io_read_ptr: *mut i8,
    io_read_end: *mut i8,
    io_read_base: *mut i8,
    io_write_base: *mut i8,
    io_write_ptr: *mut i8,
    io_write_end: *mut i8,
    io_buf_base: *mut i8,
    io_buf_end: *mut i8,
    io_save_base: *mut i8,
    io_backup_base: *mut i8,
    io_save_end: *mut i8,
    markers: *mut IoMarker,
    chain: *mut IoFile,
    fileno: i32,
    flags2: i32,
    old_offset: OffT,
    cur_column: u16,
    vtable_offset: i8,
    shortbuf: [i8; 1],
    lock: *mut IoLockT,
    offset: Off64T,
    codecvt: *mut IoCodecvt,
    wide_data: *mut IoWideData,
    freeres_list: *mut IoFile,
    freeres_buf: *mut std::ffi::c_void,
    pad5: usize,
    mode: i32,
    unused2: [u8; 15 * std::mem::size_of::<i32>() - 4 * std::mem::size_of::<*mut std::ffi::c_void>() - std::mem::size_of::<usize>()],
}

extern "C" {
    static stdin: *mut File;
    static stdout: *mut File;
    static stderr: *mut File;
}

type JmpBuf = [i64; 8];

#[repr(C)]
struct SigsetT {
    val: [u64; 1024 / (8 * std::mem::size_of::<u64>())],
}

#[repr(C)]
struct JmpBufTag {
    jmpbuf: JmpBuf,
    mask_was_saved: i32,
    saved_mask: SigsetT,
}

type SigjmpBuf = [JmpBufTag; 1];

extern "C" {
    fn longjmp(env: *mut JmpBufTag, val: i32);
}

#[repr(C)]
struct LocaleStruct {
    locales: [*mut LocaleData; 13],
    ctype_b: *const u16,
    ctype_tolower: *const i32,
    ctype_toupper: *const i32,
    names: [*const i8; 13],
}

type LocaleT = *mut LocaleStruct;

type PtrdiffT = isize;
type WcharT = i32;

#[repr(C)]
struct DivT {
    quot: i32,
    rem: i32,
}

#[repr(C)]
struct LdivT {
    quot: i64,
    rem: i64,
}

#[repr(C)]
struct LldivT {
    quot: i64,
    rem: i64,
}

type Int32T = i32;

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

type FdMask = i64;

#[repr(C)]
struct FdSet {
    fds_bits: [FdMask; 1024 / (8 * std::mem::size_of::<FdMask>())],
}

#[repr(C)]
union AtomicWideCounter {
    value64: u64,
    value32: AtomicWideCounterValue32,
}

#[repr(C)]
struct AtomicWideCounterValue32 {
    low: u32,
    high: u32,
}

#[repr(C)]
struct PthreadInternalList {
    prev: *mut PthreadInternalList,
    next: *mut PthreadInternalList,
}

#[repr(C)]
struct PthreadMutexS {
    lock: i32,
    count: u32,
    owner: i32,
    nusers: u32,
    kind: i32,
    spins: i16,
    elision: i16,
    list: PthreadListT,
}

#[repr(C)]
struct PthreadRwlockArchT {
    readers: u32,
    writers: u32,
    wrphase_futex: u32,
    writers_futex: u32,
    pad3: u32,
    pad4: u32,
    cur_writer: i32,
    shared: i32,
    rwelision: i8,
    pad1: [u8; 7],
    pad2: u64,
    flags: u32,
}

#[repr(C)]
struct PthreadCondS {
    wseq: AtomicWideCounter,
    g1_start: AtomicWideCounter,
    g_refs: [u32; 2],
    g_size: [u32; 2],
    g1_orig_size: u32,
    wrefs: u32,
    g_signals: [u32; 2],
}

#[repr(C)]
union PthreadAttrT {
    size: [i8; 56],
    align: i64,
}

#[repr(C)]
struct RandomData {
    fptr: *mut i32,
    rptr: *mut i32,
    state: *mut i32,
    rand_type: i32,
    rand_deg: i32,
    rand_sep: i32,
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

type ComparFnT = extern "C" fn(*const std::ffi::c_void, *const std::ffi::c_void) -> i32;

type Uint8T = u8;
type Uint32T = u32;

#[repr(C)]
struct UtHashBucket {
    hh_head: *mut UtHashHandle,
    count: u32,
    expand_mult: u32,
}

#[repr(C)]
struct UtHashHandle {
    tbl: *mut UtHashTable,
    prev: *mut std::ffi::c_void,
    next: *mut std::ffi::c_void,
    hh_prev: *mut UtHashHandle,
    hh_next: *mut UtHashHandle,
    key: *const std::ffi::c_void,
    keylen: u32,
    hashv: u32,
}

#[repr(C)]
struct ExampleUserT {
    id: i32,
    cookie: i32,
    hh: UtHashHandle,
}

static mut MALLOC_CNT: i32 = 0;
static mut MALLOC_FAILED: i32 = 0;
static mut IS_FATAL: i32 = 0;
static mut J_BUF: JmpBufTag = JmpBufTag {
    jmpbuf: [0; 8],
    mask_was_saved: 0,
    saved_mask: SigsetT { val: [0; 16] },
};
static mut USERS: *mut ExampleUserT = std::ptr::null_mut();
static mut USER_ID: i32 = 0;

fn alt_fatal(s: *const i8) {
    let _ = s;
    unsafe {
        IS_FATAL = 1;
        longjmp(&mut J_BUF, 1);
    }
}
