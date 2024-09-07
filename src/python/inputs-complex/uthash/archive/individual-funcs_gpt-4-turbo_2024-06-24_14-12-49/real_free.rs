type size_t = usize;
struct LocaleStruct {
    locales: [*mut LocaleData; 13],
    ctype_b: *const u16,
    ctype_tolower: *const i32,
    ctype_toupper: *const i32,
    names: [*const i8; 13],
}
type LocaleT = *mut LocaleStruct;
type ptrdiff_t = isize;
type wchar_t = i32;
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
type u_char = u8;
type u_short = u16;
type u_int = u32;
type u_long = u64;
type int8_t = i8;
type uint8_t = u8;
type int16_t = i16;
type uint16_t = u16;
type int32_t = i32;
type uint32_t = u32;
type int64_t = i64;
type uint64_t = u64;
type int_least8_t = int8_t;
type uint_least8_t = uint8_t;
type int_least16_t = int16_t;
type uint_least16_t = uint16_t;
type int_least32_t = int32_t;
type uint_least32_t = uint32_t;
type int_least64_t = int64_t;
type uint_least64_t = uint64_t;
type quad_t = i64;
type u_quad_t = u64;
type intmax_t = i64;
type uintmax_t = u64;
type dev_t = u64;
type uid_t = u32;
type gid_t = u32;
type ino_t = u64;
type mode_t = u32;
type nlink_t = u64;
type off_t = i64;
type off64_t = i64;
type pid_t = i32;
struct FsidT {
    val: [i32; 2],
}
type clock_t = i64;
type id_t = u32;
type time_t = i64;
type suseconds_t = i64;
type daddr_t = i32;
type key_t = i32;
type clockid_t = i32;
type timer_t = *mut libc::c_void;
type blksize_t = i64;
type blkcnt_t = i64;
type fsblkcnt_t = u64;
type fsfilcnt_t = u64;
type ssize_t = i64;
type syscall_slong_t = i64;
type loff_t = off64_t;
type caddr_t = *mut i8;
type int32_t = i32;
struct SigsetT {
    val: [u64; 16],
}
struct Timeval {
    tv_sec: time_t,
    tv_usec: suseconds_t,
}
struct Timespec {
    tv_sec: time_t,
    tv_nsec: syscall_slong_t,
}
type fd_mask = i64;
struct FdSet {
    fds_bits: [fd_mask; 16],
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
    size: [i8; 56],
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
extern "C" {
    fn free(ptr: *mut libc::c_void);
}
type ComparFnT = extern "C" fn(*const libc::c_void, *const libc::c_void) -> i32;
type uint32_t = u32;
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
type GnucVaList = *mut libc::c_void;
struct MbstateT {
    count: i32,
    value: union {
        wch: u32,
        wchb: [i8; 4],
    },
}
struct FposT {
    pos: off_t,
    state: MbstateT,
}
struct IoFile;
type File = *mut IoFile;
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
    old_offset: off_t,
    cur_column: u16,
    vtable_offset: i8,
    shortbuf: [i8; 1],
    lock: *mut IoLockT,
    offset: off64_t,
    codecvt: *mut IoCodecvt,
    wide_data: *mut IoWideData,
    freeres_list: *mut IoFile,
    freeres_buf: *mut libc::c_void,
    pad5: usize,
    mode: i32,
    unused2: [i8; 120],
}
type FposT = FposT;
static mut STDIN: *mut File = 0 as *mut File;
static mut STDOUT: *mut File = 0 as *mut File;
static mut STDERR: *mut File = 0 as *mut File;
static mut ALT_MALLOC_SIZES: [usize; 10] = [0; 10];
static mut ALT_MALLOC_BALANCE: i32 = 0;
static mut ALT_KEYCMP_COUNT: i32 = 0;
static mut ALT_BZERO_COUNT: i32 = 0;

unsafe fn real_free(p: *mut libc::c_void) {
    free(p);
}
