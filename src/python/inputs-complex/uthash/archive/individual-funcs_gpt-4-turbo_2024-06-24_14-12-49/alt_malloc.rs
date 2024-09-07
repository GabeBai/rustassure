use std::alloc::{alloc, Layout};
use std::mem;
use std::ptr::null_mut;

type SizeT = usize;
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
    quot: i128,
    rem: i128,
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
type IntmaxT = i128;
type UintmaxT = u128;
type DevT = u64;
type UidT = u32;
type GidT = u32;
type InoT = u64;
type ModeT = u32;
type NlinkT = u64;
type OffT = i64;
type Off64T = i64;
type PidT = i32;
#[repr(C)]
struct FsidT {
    val: [i32; 2],
}
type ClockT = i64;
type IdT = u32;
type TimeT = i64;
type SusecondsT = i64;
type DaddrT = i32;
type KeyT = i32;
type ClockidT = i32;
type TimerT = *mut ();
type BlksizeT = i64;
type BlkcntT = i64;
type FsblkcntT = u64;
type FsfilcntT = u64;
type SsizeT = i64;
type SyscallSlongT = i64;
type LoffT = Off64T;
type CaddrT = *mut i8;
type Int32T = i32;
type SigsetT = [ULong; 16];
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
    fds_bits: [FdMask; 16],
}
#[repr(C)]
union AtomicWideCounter {
    value64: u128,
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
    lock: i32,
    count: u32,
    owner: i32,
    nusers: u32,
    kind: i32,
    spins: i16,
    elision: i16,
    list: PthreadInternalList,
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
    pad2: ULong,
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
    a: u128,
}
extern "C" {
    fn malloc(size: SizeT) -> *mut ();
}
type ComparFnT = extern "C" fn(*const (), *const ()) -> i32;
type Uint32T = u32;
#[repr(C)]
struct UtHashBucket {
    hh_head: *mut UtHashHandle,
    count: u32,
    expand_mult: u32,
}
#[repr(C)]
struct UtHashTable {
    buckets: *mut UtHashBucket,
    num_buckets: u32,
    log2_num_buckets: u32,
    num_items: u32,
    tail: *mut UtHashHandle,
    hho: PtrdiffT,
    ideal_chain_maxlen: u32,
    nonideal_items: u32,
    ineff_expands: u32,
    noexpand: u32,
    signature: Uint32T,
}
#[repr(C)]
struct UtHashHandle {
    tbl: *mut UtHashTable,
    prev: *mut (),
    next: *mut (),
    hh_prev: *mut UtHashHandle,
    hh_next: *mut UtHashHandle,
    key: *const (),
    keylen: u32,
    hashv: u32,
}
extern "C" {
    fn assert_fail(assertion: *const i8, file: *const i8, line: u32, function: *const i8) -> !;
}
type GnucVaList = *mut i8;
#[repr(C)]
struct MbstateT {
    count: i32,
    value: union {
        wch: u32,
        wchb: [i8; 4],
    },
}
#[repr(C)]
struct GFposT {
    pos: OffT,
    state: MbstateT,
}
type File = _IOFile;
#[repr(C)]
struct _IOFile {
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
    markers: *mut _IOMarker,
    chain: *mut _IOFile,
    fileno: i32,
    flags2: i32,
    old_offset: OffT,
    cur_column: u16,
    vtable_offset: i8,
    shortbuf: [i8; 1],
    lock: *mut (),
    offset: Off64T,
    codecvt: *mut _IOCodecvt,
    wide_data: *mut _IOWideData,
    freeres_list: *mut _IOFile,
    freeres_buf: *mut (),
    pad5: SizeT,
    mode: i32,
    unused2: [i8; 15 * mem::size_of::<i32>() - 4 * mem::size_of::<*mut ()>() - mem::size_of::<SizeT>()],
}
extern "C" {
    static mut stdin: *mut File;
    static mut stdout: *mut File;
    static mut stderr: *mut File;
}
static mut ALT_MALLOC_SIZES: [SizeT; 10] = [0; 10];
static mut ALT_MALLOC_BALANCE: i32 = 0;

unsafe fn alt_malloc(sz: SizeT) -> *mut () {
    ALT_MALLOC_SIZES[ALT_MALLOC_BALANCE as usize] = sz;
    ALT_MALLOC_BALANCE += 1;
    if ALT_MALLOC_BALANCE == 1 {
        assert!(sz == mem::size_of::<UtHashTable>());
    }
    malloc(sz)
}
