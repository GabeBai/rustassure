type PtrdiffT = isize;
type SizeT = usize;
type WcharT = i32;
extern "C" {
    fn memcmp(__s1: *const libc::c_void, __s2: *const libc::c_void, __n: usize) -> i32;
}
struct LocaleStruct {
    __locales: [*mut LocaleData; 13],
    __ctype_b: *const u16,
    __ctype_tolower: *const i32,
    __ctype_toupper: *const i32,
    __names: [*const i8; 13],
}
type LocaleT = *mut LocaleStruct;
struct DivT {
    quot: i32,
    rem: i32,
}
struct LdivT {
    quot: i64,
    rem: i64,
}
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
struct FsidT {
    __val: [i32; 2],
}
type ClockT = i64;
type IdT = u32;
type TimeT = i64;
type SusecondsT = i64;
type DaddrT = i32;
type KeyT = i32;
type ClockidT = i32;
type TimerT = *mut libc::c_void;
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
    __val: [u64; 16],
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
    __fds_bits: [FdMask; 16],
}
union AtomicWideCounter {
    __value64: u128,
    __value32: struct {
        __low: u32,
        __high: u32,
    },
}
struct PthreadInternalList {
    __prev: *mut PthreadInternalList,
    __next: *mut PthreadInternalList,
}
struct PthreadMutexS {
    __lock: i32,
    __count: u32,
    __owner: i32,
    __nusers: u32,
    __kind: i32,
    __spins: i16,
    __elision: i16,
    __list: PthreadInternalList,
}
struct PthreadRwlockArchT {
    __readers: u32,
    __writers: u32,
    __wrphase_futex: u32,
    __writers_futex: u32,
    __pad3: u32,
    __pad4: u32,
    __cur_writer: i32,
    __shared: i32,
    __rwelision: i8,
    __pad1: [u8; 7],
    __pad2: u64,
    __flags: u32,
}
struct PthreadCondS {
    __wseq: AtomicWideCounter,
    __g1_start: AtomicWideCounter,
    __g_refs: [u32; 2],
    __g_size: [u32; 2],
    __g1_orig_size: u32,
    __wrefs: u32,
    __g_signals: [u32; 2],
}
union PthreadAttrT {
    __size: [i8; 56],
    __align: i64,
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
    __x: [u16; 3],
    __old_x: [u16; 3],
    __c: u16,
    __init: u16,
    __a: u128,
}
type ComparFnT = extern "C" fn(*const libc::c_void, *const libc::c_void) -> i32;
type Uint32T = u32;
struct UtHashBucket {
    hh_head: *mut UtHashHandle,
    count: u32,
    expand_mult: u32,
}
struct UtHashHandle {
    tbl: *mut UtHashTable,
    prev: *mut libc::c_void,
    next: *mut libc::c_void,
    hh_prev: *mut UtHashHandle,
    hh_next: *mut UtHashHandle,
    key: *const libc::c_void,
    keylen: u32,
    hashv: u32,
}
struct UtHashTable {
    buckets: *mut UtHashBucket,
    num_buckets: u32,
    log2_num_buckets: u32,
    hho: u32,
    ideal_chain_maxlen: u32,
    nonideal_items: u32,
    ineff_expands: u32,
    noexpand: i32,
    signature: u32,
}
struct ElT {
    key: *mut libc::c_void,
    i: i32,
    hh: UtHashHandle,
}
