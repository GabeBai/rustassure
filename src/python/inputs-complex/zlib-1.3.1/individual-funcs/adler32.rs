type PtrDiffT = isize;
type SizeT = usize;
type WCharT = i32;

#[repr(align(8))]
struct MaxAlignT1(i64);

#[repr(align(16))]
struct MaxAlignT2(f64);

struct MaxAlignT {
    __clang_max_align_nonce1: MaxAlignT1,
    __clang_max_align_nonce2: MaxAlignT2,
}

type ZSizeT = SizeT;
type Byte = u8;
type UInt = u32;
type ULong = u64;
type ByteF = Byte;
type CharF = i8;
type IntF = i32;
type UIntF = UInt;
type ULongF = ULong;
type VoidPC = *const core::ffi::c_void;
type VoidPF = *mut core::ffi::c_void;
type VoidP = *mut core::ffi::c_void;
type ZCrcT = u32;
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
type QuadT = isize;
type UQuadT = usize;
type IntMaxT = isize;
type UIntMaxT = usize;
type DevT = ULong;
type UidT = UInt;
type GidT = UInt;
type InoT = ULong;
type Ino64T = ULong;
type ModeT = UInt;
type NLinkT = ULong;
type OffT = isize;
type Off64T = isize;
type PidT = i32;

#[repr(C)]
struct FsidT {
    __val: [i32; 2],
}

type ClockT = isize;
type RLimT = ULong;
type RLim64T = ULong;
type IdT = UInt;
type TimeT = isize;
type USecondsT = UInt;
type SUsecondsT = isize;
type SUseconds64T = isize;
type DAddrT = i32;
type KeyT = i32;
type ClockIdT = i32;
type TimerT = *mut core::ffi::c_void;
type BlkSizeT = isize;
type BlkCntT = isize;
type BlkCnt64T = isize;
type FsBlkCntT = ULong;
type FsBlkCnt64T = ULong;
type FsFilCntT = ULong;
type FsFilCnt64T = ULong;
type FsWordT = isize;
type SSizeT = isize;
type SysCallSLongT = isize;
type SysCallULongT = usize;
type LOffT = Off64T;
type CAddrT = *mut i8;
type IntPtrT = isize;
type SockLenT = UInt;
type SigAtomicT = i32;
type UChar = u8;
type UShort = u16;
type UInt = u32;
type ULong = u64;
type QuadT = isize;
type UQuadT = usize;
type FsidT = FsidT;
type LOffT = LOffT;
type InoT = InoT;
type Ino64T = Ino64T;
type DevT = DevT;
type GidT = GidT;
type ModeT = ModeT;
type NLinkT = NLinkT;
type UidT = UidT;
type OffT = OffT;
type Off64T = Off64T;
type PidT = PidT;
type IdT = IdT;
type SSizeT = SSizeT;
type DAddrT = DAddrT;
type CAddrT = CAddrT;
type KeyT = KeyT;
type ClockT = ClockT;
type ClockIdT = ClockIdT;
type TimeT = TimeT;
type TimerT = TimerT;
type ULong = ULong;
type UShort = UShort;
type UInt = UInt;
type Int8T = Int8T;
type Int16T = Int16T;
type Int32T = Int32T;
type Int64T = Int64T;
type UInt8T = UInt8T;
type UInt16T = UInt16T;
type UInt32T = UInt32T;
type UInt64T = UInt64T;

#[repr(C)]
struct SigSetT {
    __val: [ULong; 1024 / (8 * core::mem::size_of::<ULong>())],
}

type SigSetT = SigSetT;

#[repr(C)]
struct TimeVal {
    tv_sec: TimeT,
    tv_usec: SUsecondsT,
}

#[repr(C)]
struct TimeSpec {
    tv_sec: TimeT,
    tv_nsec: SysCallSLongT,
}

type SUsecondsT = SUsecondsT;
type FdMask = isize;

#[repr(C)]
struct FdSet {
    __fds_bits: [FdMask; 1024 / (8 * core::mem::size_of::<FdMask>())],
}

type FdMask = FdMask;

extern "C" {
    fn select(
        __nfds: i32,
        __readfds: *mut FdSet,
        __writefds: *mut FdSet,
        __exceptfds: *mut FdSet,
        __timeout: *mut TimeVal,
    ) -> i32;
    fn pselect(
        __nfds: i32,
        __readfds: *mut FdSet,
        __writefds: *mut FdSet,
        __exceptfds: *mut FdSet,
        __timeout: *const TimeSpec,
        __sigmask: *const SigSetT,
    ) -> i32;
}

type BlkSizeT = BlkSizeT;
type BlkCntT = BlkCntT;
type FsBlkCntT = FsBlkCntT;
type FsFilCntT = FsFilCntT;
type BlkCnt64T = BlkCnt64T;
type FsBlkCnt64T = FsBlkCnt64T;
type FsFilCnt64T = FsFilCnt64T;

#[repr(C)]
union AtomicWideCounter {
    __value64: u64,
    __value32: __Value32,
}

#[repr(C)]
struct __Value32 {
    __low: u32,
    __high: u32,
}

#[repr(C)]
struct PThreadInternalList {
    __prev: *mut PThreadInternalList,
    __next: *mut PThreadInternalList,
}

type PThreadListT = PThreadInternalList;

#[repr(C)]
struct PThreadInternalSList {
    __next: *mut PThreadInternalSList,
}

type PThreadSListT = PThreadInternalSList;

#[repr(C)]
struct PThreadMutexS {
    __lock: i32,
    __count: u32,
    __owner: i32,
    __nusers: u32,
    __kind: i32,
    __spins: i16,
    __elision: i16,
    __list: PThreadListT,
}

#[repr(C)]
struct PThreadRwLockArchT {
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

#[repr(C)]
struct PThreadCondS {
    __wseq: AtomicWideCounter,
    __g1_start: AtomicWideCounter,
    __g_refs: [u32; 2],
    __g_size: [u32; 2],
    __g1_orig_size: u32,
    __wrefs: u32,
    __g_signals: [u32; 2],
}

type TssT = u32;
type ThrdT = u64;

#[repr(C)]
struct OnceFlag {
    __data: i32,
}

type PThreadT = u64;

#[repr(C)]
union PThreadMutexAttrT {
    __size: [u8; 4],
    __align: i32,
}

#[repr(C)]
union PThreadCondAttrT {
    __size: [u8; 4],
    __align: i32,
}

type PThreadKeyT = u32;
type PThreadOnceT = i32;

#[repr(C)]
union PThreadAttrT {
    __size: [u8; 56],
    __align: isize,
}

type PThreadAttrT = PThreadAttrT;

#[repr(C)]
union PThreadMutexT {
    __data: PThreadMutexS,
    __size: [u8; 40],
    __align: isize,
}

#[repr(C)]
union PThreadCondT {
    __data: PThreadCondS,
    __size: [u8; 48],
    __align: i128,
}

#[repr(C)]
union PThreadRwLockT {
    __data: PThreadRwLockArchT,
    __size: [u8; 56],
    __align: isize,
}

#[repr(C)]
union PThreadRwLockAttrT {
    __size: [u8; 8],
    __align: isize,
}

type PThreadSpinLockT = core::sync::atomic::AtomicI32;

#[repr(C)]
union PThreadBarrierT {
    __size: [u8; 32],
    __align: isize,
}

#[repr(C)]
union PThreadBarrierAttrT {
    __size: [u8; 4],
    __align: i32,
}

type VaList = core::ffi::VaList;
type GnuVaList = VaList;
type USecondsT = USecondsT;
type IntPtrT = IntPtrT;
type SockLenT = SockLenT;

extern "C" {
    fn access(__name: *const i8, __type: i32) -> i32;
    fn faccessat(__fd: i32, __file: *const i8, __type: i32, __flag: i32) -> i32;
    fn lseek(__fd: i32, __offset: OffT, __whence: i32) -> OffT;
    fn lseek64(__fd: i32, __offset: Off64T, __whence: i32) -> Off64T;
    fn close(__fd: i32) -> i32;
    fn closefrom(__lowfd: i32);
    fn read(__fd: i32, __buf: *mut core::ffi::c_void, __nbytes: SizeT) -> SSizeT;
    fn write(__fd: i32, __buf: *const core::ffi::c_void, __n: SizeT) -> SSizeT;
    fn pread(__fd: i32, __buf: *mut core::ffi::c_void, __nbytes: SizeT, __offset: OffT) -> SSizeT;
    fn pwrite(__fd: i32, __buf: *const core::ffi::c_void, __n: SizeT, __offset: OffT) -> SSizeT;
    fn pread64(__fd: i32, __buf: *mut core::ffi::c_void, __nbytes: SizeT, __offset: Off64T) -> SSizeT;
    fn pwrite64(__fd: i32, __buf: *const core::ffi::c_void, __n: SizeT, __offset: Off64T) -> SSizeT;
    fn pipe(__pipedes: *mut i32) -> i32;
    fn alarm(__seconds: u32) -> u32;
    fn sleep(__seconds: u32) -> u32;
    fn ualarm(__value: USecondsT, __interval: USecondsT) -> USecondsT;
    fn usleep(__useconds: USecondsT) -> i32;
    fn pause() -> i32;
    fn chown(__file: *const i8, __owner: UidT, __group: GidT) -> i32;
    fn fchown(__fd: i32, __owner: UidT, __group: GidT) -> i32;
    fn lchown(__file: *const i8, __owner: UidT, __group: GidT) -> i32;
    fn fchownat(__fd: i32, __file: *const i8, __owner: UidT, __group: GidT, __flag: i32) -> i32;
    fn chdir(__path: *const i8) -> i32;
    fn fchdir(__fd: i32) -> i32;
    fn getcwd(__buf: *mut i8, __size: SizeT) -> *mut i8;
    fn getwd(__buf: *mut i8) -> *mut i8;
    fn dup(__fd: i32) -> i32;
    fn dup2(__fd: i32, __fd2: i32) -> i32;
    fn execve(__path: *const i8, __argv: *const *const i8, __envp: *const *const i8) -> i32;
    fn fexecve(__fd: i32, __argv: *const *const i8, __envp: *const *const i8) -> i32;
    fn execv(__path: *const i8, __argv: *const *const i8) -> i32;
    fn execle(__path: *const i8, __arg: *const i8, ...) -> i32;
    fn execl(__path: *const i8, __arg: *const i8, ...) -> i32;
    fn execvp(__file: *const i8, __argv: *const *const i8) -> i32;
    fn execlp(__file: *const i8, __arg: *const i8, ...) -> i32;
    fn nice(__inc: i32) -> i32;
    fn _exit(__status: i32) -> !;
}

enum {
    _PC_LINK_MAX,
    _PC_MAX_CANON,
    _PC_MAX_INPUT,
    _PC_NAME_MAX,
    _PC_PATH_MAX,
    _PC_PIPE_BUF,
    _PC_CHOWN_RESTRICTED,
    _PC_NO_TRUNC,
    _PC_VDISABLE,
    _PC_SYNC_IO,
    _PC_ASYNC_IO,
    _PC_PRIO_IO,
    _PC_SOCK_MAXBUF,
    _PC_FILESIZEBITS,
    _PC_REC_INCR_XFER_SIZE,
    _PC_REC_MAX_XFER_SIZE,
    _PC_REC_MIN_XFER_SIZE,
    _PC_REC_XFER_ALIGN,
    _PC_ALLOC_SIZE_MIN,
    _PC_SYMLINK_MAX,
    _PC_2_SYMLINKS,
}

enum {
    _SC_ARG_MAX,
    _SC_CHILD_MAX,
    _SC_CLK_TCK,
    _SC_NGROUPS_MAX,
    _SC_OPEN_MAX,
    _SC_STREAM_MAX,
    _SC_TZNAME_MAX,
    _SC_JOB_CONTROL,
    _SC_SAVED_IDS,
    _SC_REALTIME_SIGNALS,
    _SC_PRIORITY_SCHEDULING,
    _SC_TIMERS,
    _SC_ASYNCHRONOUS_IO,
    _SC_PRIORITIZED_IO,
    _SC_SYNCHRONIZED_IO,
    _SC_FSYNC,
    _SC_MAPPED_FILES,
    _SC_MEMLOCK,
    _SC_MEMLOCK_RANGE,
    _SC_MEMORY_PROTECTION,
    _SC_MESSAGE_PASSING,
    _SC_SEMAPHORES,
    _SC_SHARED_MEMORY_OBJECTS,
    _SC_AIO_LISTIO_MAX,
    _SC_AIO_MAX,
    _SC_AIO_PRIO_DELTA_MAX,
    _SC_DELAYTIMER_MAX,
    _SC_MQ_OPEN_MAX,
    _SC_MQ_PRIO_MAX,
    _SC_VERSION,
    _SC_PAGESIZE,
    _SC_RTSIG_MAX,
    _SC_SEM_NSEMS_MAX,
    _SC_SEM_VALUE_MAX,
    _SC_SIGQUEUE_MAX,
    _SC_TIMER_MAX,
    _SC_BC_BASE_MAX,
    _SC_BC_DIM_MAX,
    _SC_BC_SCALE_MAX,
    _SC_BC_STRING_MAX,
    _SC_COLL_WEIGHTS_MAX,
    _SC_EQUIV_CLASS_MAX,
    _SC_EXPR_NEST_MAX,
    _SC_LINE_MAX,
    _SC_RE_DUP_MAX,
    _SC_CHARCLASS_NAME_MAX,
    _SC_2_VERSION,
    _SC_2_C_BIND,
    _SC_2_C_DEV,
    _SC_2_FORT_DEV,
    _SC_2_FORT_RUN,
    _SC_2_SW_DEV,
    _SC_2_LOCALEDEF,
    _SC_PII,
    _SC_PII_XTI,
    _SC_PII_SOCKET,
    _SC_PII_INTERNET,
    _SC_PII_OSI,
    _SC_POLL,
    _SC_SELECT,
    _SC_UIO_MAXIOV,
    _SC_IOV_MAX,
    _SC_PII_INTERNET_STREAM,
    _SC_PII_INTERNET_DGRAM,
    _SC_PII_OSI_COTS,
    _SC_PII_OSI_CLTS,
    _SC_PII_OSI_M,
    _SC_T_IOV_MAX,
    _SC_THREADS,
    _SC_THREAD_SAFE_FUNCTIONS,
    _SC_GETGR_R_SIZE_MAX,
    _SC_GETPW_R_SIZE_MAX,
    _SC_LOGIN_NAME_MAX,
    _SC_TTY_NAME_MAX,
    _SC_THREAD_DESTRUCTOR_ITERATIONS,
    _SC_THREAD_KEYS_MAX,
    _SC_THREAD_STACK_MIN,
    _SC_THREAD_THREADS_MAX,
    _SC_THREAD_ATTR_STACKADDR,
    _SC_THREAD_ATTR_STACKSIZE,
    _SC_THREAD_PRIORITY_SCHEDULING,
    _SC_THREAD_PRIO_INHERIT,
    _SC_THREAD_PRIO_PROTECT,
    _SC_THREAD_PROCESS_SHARED,
    _SC_NPROCESSORS_CONF,
    _SC_NPROCESSORS_ONLN,
    _SC_PHYS_PAGES,
    _SC_AVPHYS_PAGES,
    _SC_ATEXIT_MAX,
    _SC_PASS_MAX,
    _SC_XOPEN_VERSION,
    _SC_XOPEN_XCU_VERSION,
    _SC_XOPEN_UNIX,
    _SC_XOPEN_CRYPT,
    _SC_XOPEN_ENH_I18N,
    _SC