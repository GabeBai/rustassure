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
type QuadT = i64;
type UQuadT = u64;
type DevT = u64;
type UidT = u32;
type GidT = u32;
type InoT = u64;
type ModeT = u32;
type NlinkT = u64;
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
type SyscallSlongT = i64;
type LoffT = Off64T;
type CaddrT = *mut i8;

#[repr(C)]
struct MbStateT {
    count: i32,
    value: MbStateTValue,
}

#[repr(C)]
union MbStateTValue {
    wch: u32,
    wchb: [u8; 4],
}

#[repr(C)]
struct FposT {
    pos: OffT,
    state: MbStateT,
}

type File = _IOFile;

#[repr(C)]
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
    lock: *mut IOlockT,
    offset: Off64T,
    codecvt: *mut _IOCodecvt,
    wide_data: *mut _IOWideData,
    freeres_list: *mut _IOFile,
    freeres_buf: *mut std::ffi::c_void,
    pad5: usize,
    mode: i32,
    unused2: [u8; 120], // Adjust size accordingly
}

extern "C" {
    static stdin: *mut File;
    static stdout: *mut File;
    static stderr: *mut File;
}

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

type Int32T = i32;

#[repr(C)]
struct SigsetT {
    val: [ULong; 16], // Adjust size accordingly
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

type FdMask = i64;

#[repr(C)]
struct FdSet {
    fds_bits: [FdMask; 16], // Adjust size accordingly
}

#[repr(C)]
union AtomicWideCounter {
    value64: u128,
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
    size: [u8; 56],
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

type ComparFnT = extern "C" fn(*const std::ffi::c_void, *const std::ffi::c_void) -> i32;

#[repr(C)]
struct LocaleStruct {
    locales: [*mut LocaleData; 13],
    ctype_b: *const u16,
    ctype_tolower: *const i32,
    ctype_toupper: *const i32,
    names: [*const i8; 13],
}

type LocaleT = *mut LocaleStruct;

#[repr(C)]
struct UtString {
    d: *mut i8,
    n: usize,
    i: usize,
}

#[inline(always)]
fn utstring_find_r(
    haystack: *const i8,
    haystack_len: usize,
    needle: *const i8,
    needle_len: usize,
    kmp_table: *mut i64,
) -> i64 {
    let mut i = needle_len as i64 - 1;
    let mut j = haystack_len as i64 - 1;
    let mut find_position = -1;

    while j >= 0 && j >= i {
        while i < needle_len as i64 && unsafe { *needle.offset(i as isize) != *haystack.offset(j as isize) } {
            i = unsafe { *kmp_table.offset((i + 1) as isize) };
        }
        i -= 1;
        j -= 1;
        if i < 0 {
            find_position = j + 1;
            break;
        }
    }
    find_position
}
