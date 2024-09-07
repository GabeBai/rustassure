type SizeT = usize;
type WcharT = i32;
struct DivT {
    quot: i32,
    rem: i32,
}
struct LdivT {
    quot: i64,
    rem: i64,
}
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
type TimerT = *mut std::ffi::c_void;
type BlksizeT = i64;
type BlkcntT = i64;
type FsblkcntT = u64;
type FsfilcntT = u64;
type SsizeT = i64;
type SyscallSlongT = i64;
type LoffT = Off64T;
type CaddrT = *mut i8;
type Int32T = i32;
struct SigsetT {
    val: [ULong; 1024 / (8 * std::mem::size_of::<ULong>())],
}
struct Timeval {
    tv_sec: TimeT,
    tv_usec: SusecondsT,
}
struct Timespec {
    tv_sec: TimeT,
    tv_nsec: SyscallSlongT,
}
type FdMask = i64;
struct FdSet {
    fds_bits: [FdMask; 1024 / (8 * std::mem::size_of::<FdMask>())],
}
union AtomicWideCounter {
    value64: u64,
    value32: struct {
        low: u32,
        high: u32,
    },
}
struct PthreadInternalList {
    prev: *mut PthreadInternalList,
    next: *mut PthreadInternalList,
}
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
struct PthreadCondS {
    wseq: AtomicWideCounter,
    g1_start: AtomicWideCounter,
    g_refs: [u32; 2],
    g_size: [u32; 2],
    g1_orig_size: u32,
    wrefs: u32,
    g_signals: [u32; 2],
}
union PthreadAttrT {
    size: [u8; 56],
    align: i64,
}
struct RandomData {
    fptr: *mut i32,
    rptr: *mut i32,
    state: *mut i32,
    rand_type: i32,
    rand_deg: i32,
    rand_sep: i32,
    end_ptr: *mut i32,
}
struct Drand48Data {
    x: [u16; 3],
    old_x: [u16; 3],
    c: u16,
    init: u16,
    a: u64,
}
type ComparFnT = unsafe extern "C" fn(*const std::ffi::c_void, *const std::ffi::c_void) -> i32;
struct LocaleStruct {
    locales: [*mut LocaleData; 13],
    ctype_b: *const u16,
    ctype_tolower: *const i32,
    ctype_toupper: *const i32,
    names: [*const i8; 13],
}
type LocaleT = *mut LocaleStruct;
type PtrdiffT = isize;
type Uint32T = u32;
struct UtHashBucket {
    hh_head: *mut UtHashHandle,
    count: u32,
    expand_mult: u32,
}

fn trivial_hash(s: &str, len: usize) -> u32 {
    let mut h: u32 = 0;
    for c in s.chars().take(len) {
        h += c as u32;
    }
    h
}
