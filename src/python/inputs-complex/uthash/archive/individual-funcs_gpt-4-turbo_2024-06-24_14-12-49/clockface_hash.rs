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
type IntMaxT = i64;
type UIntMaxT = u64;
type DevT = u64;
type UidT = u32;
type GidT = u32;
type InoT = u64;
type ModeT = u32;
type NLinkT = u64;
type OffT = i64;
type Off64T = i64;
type PidT = i32;
type FsIdT = (i32, i32);
type ClockT = i64;
type IdT = u32;
type TimeT = i64;
type SusecondsT = i64;
type DaddrT = i32;
type KeyT = i32;
type ClockIdT = i32;
type TimerT = *mut std::ffi::c_void;
type BlkSizeT = i64;
type BlkCntT = i64;
type FsBlkCntT = u64;
type FsFilCntT = u64;
type SSizeT = i64;
type SyscallSLongT = i64;
type LOffT = Off64T;
type CAddrT = *mut i8;
type MbStateT = (i32, [u8; 4]);
type FPosT = (OffT, MbStateT);
type File = _IOFile;
type IOFile = _IOFile;
type IOLockT = ();
struct _IOFile {
    flags: i32,
    read_ptr: *mut i8,
    read_end: *mut i8,
    read_base: *mut i8,
    write_base: *mut i8,
    write_ptr: *mut i8,
    write_end: *mut i8,
    buf_base: *mut i8,
    buf_end: *mut i8,
    save_base: *mut i8,
    backup_base: *mut i8,
    save_end: *mut i8,
    markers: *mut _IOMarker,
    chain: *mut _IOFile,
    fileno: i32,
    flags2: i32,
    old_offset: OffT,
    cur_column: u16,
    vtable_offset: i8,
    shortbuf: [i8; 1],
    lock: *mut IOLockT,
    offset: Off64T,
    codecvt: *mut _IOCodecvt,
    wide_data: *mut _IOWideData,
    freeres_list: *mut _IOFile,
    freeres_buf: *mut std::ffi::c_void,
    pad5: usize,
    mode: i32,
    unused2: [u8; 15 * std::mem::size_of::<i32>() - 4 * std::mem::size_of::<*mut std::ffi::c_void>() - std::mem::size_of::<usize>()],
}
type IOMarker = _IOMarker;
type IOCodecvt = _IOCodecvt;
type IOWideData = _IOWideData;
type FPosT = (OffT, MbStateT);
static mut stdin: *mut File = std::ptr::null_mut();
static mut stdout: *mut File = std::ptr::null_mut();
static mut stderr: *mut File = std::ptr::null_mut();
type WCharT = i32;
type DivT = (i32, i32);
type LDivT = (i64, i64);
type LLDivT = (i64, i64);
type Int32T = i32;
type SigSetT = [u64; 16];
struct Timeval {
    tv_sec: TimeT,
    tv_usec: SusecondsT,
}
struct Timespec {
    tv_sec: TimeT,
    tv_nsec: SyscallSLongT,
}
type FdMask = i64;
struct FdSet {
    fds_bits: [FdMask; 16],
}
union AtomicWideCounter {
    value64: u64,
    value32: (u32, u32),
}
struct PThreadInternalList {
    prev: *mut PThreadInternalList,
    next: *mut PThreadInternalList,
}
struct PThreadMutexS {
    lock: i32,
    count: u32,
    owner: i32,
    nusers: u32,
    kind: i32,
    spins: i16,
    elision: i16,
    list: PThreadInternalList,
}
struct PThreadRWLockArchT {
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
struct PThreadCondS {
    wseq: AtomicWideCounter,
    g1_start: AtomicWideCounter,
    g_refs: [u32; 2],
    g_size: [u32; 2],
    g1_orig_size: u32,
    wrefs: u32,
    g_signals: [u32; 2],
}
union PThreadAttrT {
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
type ComparFnT = extern "C" fn(*const std::ffi::c_void, *const std::ffi::c_void) -> i32;
struct LocaleStruct {
    locales: [*mut LocaleData; 13],
    ctype_b: *const u16,
    ctype_tolower: *const i32,
    ctype_toupper: *const i32,
    names: [*const i8; 13],
}
type LocaleT = *mut LocaleStruct;
type PtrDiffT = isize;
type UInt32T = u32;
struct UTHashBucket {
    hh_head: *mut UTHashHandle,
    count: u32,
    expand_mult: u32,
}
struct UTHashHandle {
    tbl: *mut UTHashTable,
    prev: *mut std::ffi::c_void,
    next: *mut std::ffi::c_void,
    hh_prev: *mut UTHashHandle,
    hh_next: *mut UTHashHandle,
    key: *const std::ffi::c_void,
    keylen: u32,
    hashv: u32,
}
struct Clockface {
    time: i32,
    hh: UTHashHandle,
}

fn clockface_hash(time: i32) -> i32 {
    time % 4
}
