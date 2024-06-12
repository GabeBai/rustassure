type PtrDiffT = i64;
type SizeT = u64;
type WCharT = i32;

#[repr(C)]
struct MaxAlignT {
    __clang_max_align_nonce1: i64,
    __clang_max_align_nonce2: f64,
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
type __UChar = u8;
type __UShort = u16;
type __UInt = u32;
type __ULong = u64;
type __Int8T = i8;
type __UInt8T = u8;
type __Int16T = i16;
type __UInt16T = u16;
type __Int32T = i32;
type __UInt32T = u32;
type __Int64T = i64;
type __UInt64T = u64;
type __IntLeast8T = __Int8T;
type __UIntLeast8T = __UInt8T;
type __IntLeast16T = __Int16T;
type __UIntLeast16T = __UInt16T;
type __IntLeast32T = __Int32T;
type __UIntLeast32T = __UInt32T;
type __IntLeast64T = __Int64T;
type __UIntLeast64T = __UInt64T;
type __QuadT = i64;
type __UQuadT = u64;
type __IntMaxT = i64;
type __UIntMaxT = u64;
type __DevT = u64;
type __UidT = u32;
type __GidT = u32;
type __InoT = u64;
type __Ino64T = u64;
type __ModeT = u32;
type __NLinkT = u64;
type __OffT = i64;
type __Off64T = i64;
type __PidT = i32;
#[repr(C)]
struct __FsidT {
    __val: [i32; 2],
}
type __ClockT = i64;
type __RLimT = u64;
type __RLim64T = u64;
type __IdT = u32;
type __TimeT = i64;
type __USecondsT = u32;
type __SUsecondsT = i64;
type __SUseconds64T = i64;
type __DAddrT = i32;
type __KeyT = i32;
type __ClockIDT = i32;
type __TimerT = *mut core::ffi::c_void;
type __BlkSizeT = i64;
type __BlkCntT = i64;
type __BlkCnt64T = i64;
type __FsBlkCntT = u64;
type __FsBlkCnt64T = u64;
type __FsFilCntT = u64;
type __FsFilCnt64T = u64;
type __FsWordT = i64;
type __SSizeT = i64;
type __SyscallSLongT = i64;
type __SyscallULongT = u64;
type __LoffT = __Off64T;
type __CAddrT = *mut i8;
type __IntPtrT = i64;
type __SockLenT = u32;
type __SigAtomicT = i32;
type UChar = __UChar;
type UShort = __UShort;
type UInt = __UInt;
type ULong = __ULong;
type QuadT = __QuadT;
type UQuadT = __UQuadT;
type FsidT = __FsidT;
type LoffT = __LoffT;
type InoT = __InoT;
type Ino64T = __Ino64T;
type DevT = __DevT;
type GidT = __GidT;
type ModeT = __ModeT;
type NLinkT = __NLinkT;
type UidT = __UidT;
type OffT = __OffT;
type Off64T = __Off64T;
type PidT = __PidT;
type IdT = __IdT;
type SSizeT = __SSizeT;
type DAddrT = __DAddrT;
type CAddrT = __CAddrT;
type KeyT = __KeyT;
type ClockT = __ClockT;
type ClockIDT = __ClockIDT;
type TimeT = __TimeT;
type TimerT = __TimerT;
type ULong = u64;
type UShort = u16;
type UInt = u32;
type Int8T = __Int8T;
type Int16T = __Int16T;
type Int32T = __Int32T;
type Int64T = __Int64T;
type UInt8T = __UInt8T;
type UInt16T = __UInt16T;
type UInt32T = __UInt32T;
type UInt64T = __UInt64T;
type RegisterT = i32;
#[repr(C)]
struct __SigSetT {
    __val: [u64; 1024 / (8 * core::mem::size_of::<u64>())],
}
type SigSetT = __SigSetT;
#[repr(C)]
struct TimeVal {
    tv_sec: __TimeT,
    tv_usec: __SUsecondsT,
}
#[repr(C)]
struct TimeSpec {
    tv_sec: __TimeT,
    tv_nsec: __SyscallSLongT,
}
type SUsecondsT = __SUsecondsT;
type __FdMask = i64;
#[repr(C)]
struct FdSet {
    __fds_bits: [__FdMask; 1024 / (8 * core::mem::size_of::<__FdMask>())],
}
type FdMask = __FdMask;
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
type BlkSizeT = __BlkSizeT;
type BlkCntT = __BlkCntT;
type FsBlkCntT = __FsBlkCntT;
type FsFilCntT = __FsFilCntT;
type BlkCnt64T = __BlkCnt64T;
type FsBlkCnt64T = __FsBlkCnt64T;
type FsFilCnt64T = __FsFilCnt64T;
#[repr(C)]
union __AtomicWideCounter {
    __value64: u64,
    __value32: __AtomicWideCounterValue32,
}
#[repr(C)]
struct __AtomicWideCounterValue32 {
    __low: u32,
    __high: u32,
}
#[repr(C)]
struct __PThreadInternalList {
    __prev: *mut __PThreadInternalList,
    __next: *mut __PThreadInternalList,
}
type __PThreadListT = __PThreadInternalList;
#[repr(C)]
struct __PThreadInternalSList {
    __next: *mut __PThreadInternalSList,
}
type __PThreadSListT = __PThreadInternalSList;
#[repr(C)]
struct __PThreadMutexS {
    __lock: i32,
    __count: u32,
    __owner: i32,
    __nusers: u32,
    __kind: i32,
    __spins: i16,
    __elision: i16,
    __list: __PThreadListT,
}
#[repr(C)]
struct __PThreadRWLockArchT {
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
struct __PThreadCondS {
    __wseq: __AtomicWideCounter,
    __g1_start: __AtomicWideCounter,
    __g_refs: [u32; 2],
    __g_size: [u32; 2],
    __g1_orig_size: u32,
    __wrefs: u32,
    __g_signals: [u32; 2],
}
type __TSST = u32;
type __ThrdT = u64;
#[repr(C)]
struct __OnceFlag {
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
    __align: i64,
}
#[repr(C)]
union PThreadMutexT {
    __data: __PThreadMutexS,
    __size: [u8; 40],
    __align: i64,
}
#[repr(C)]
union PThreadCondT {
    __data: __PThreadCondS,
    __size: [u8; 48],
    __align: i64,
}
#[repr(C)]
union PThreadRWLockT {
    __data: __PThreadRWLockArchT,
    __size: [u8; 56],
    __align: i64,
}
#[repr(C)]
union PThreadRWLockAttrT {
    __size: [u8; 8],
    __align: i64,
}
type PThreadSpinLockT = core::cell::UnsafeCell<i32>;
#[repr(C)]
union PThreadBarrierT {
    __size: [u8; 32],
    __align: i64,
}
#[repr(C)]
union PThreadBarrierAttrT {
    __size: [u8; 4],
    __align: i32,
}
type VaList = core::ffi::VaListImpl;
type __GnucVaList = VaList;
type USecondsT = __USecondsT;
type IntPtrT = __IntPtrT;
type SockLenT = __SockLenT;
extern "C" {
    fn access(__name: *const i8, __type: i32) -> i32;
    fn faccessat(__fd: i32, __file: *const i8, __type: i32, __flag: i32) -> i32;
    fn lseek(__fd: i32, __offset: __OffT, __whence: i32) -> __OffT;
    fn lseek64(__fd: i32, __offset: __Off64T, __whence: i32) -> __Off64T;
    fn close(__fd: i32) -> i32;
    fn closefrom(__lowfd: i32);
    fn read(__fd: i32, __buf: *mut core::ffi::c_void, __nbytes: SizeT) -> SSizeT;
    fn write(__fd: i32, __buf: *const core::ffi::c_void, __n: SizeT) -> SSizeT;
    fn pread(__fd: i32, __buf: *mut core::ffi::c_void, __nbytes: SizeT, __offset: __OffT) -> SSizeT;
    fn pwrite(__fd: i32, __buf: *const core::ffi::c_void, __n: SizeT, __offset: __OffT) -> SSizeT;
    fn pread64(__fd: i32, __buf: *mut core::ffi::c_void, __nbytes: SizeT, __offset: __Off64T) -> SSizeT;
    fn pwrite64(__fd: i32, __buf: *const core::ffi::c_void, __n: SizeT, __offset: __Off64T) -> SSizeT;
    fn pipe(__pipedes: *mut i32) -> i32;
    fn alarm(__seconds: u32) -> u32;
    fn sleep(__seconds: u32) -> u32;
    fn ualarm(__value: USecondsT, __interval: USecondsT) -> USecondsT;
    fn usleep(__useconds: USecondsT) -> i32;
    fn pause() -> i32;
    fn chown(__file: *const i8, __owner: __UidT, __group: __GidT) -> i32;
    fn fchown(__fd: i32, __owner: __UidT, __group: __GidT) -> i32;
    fn lchown(__file: *const i8, __owner: __UidT, __group: __GidT) -> i32;
    fn fchownat(__fd: i32, __file: *const i8, __owner: __UidT, __group: __GidT, __flag: i32) -> i32;
    fn chdir(__path: *const i8) -> i32;
    fn fchdir(__fd: i32) -> i32;
    fn getcwd(__buf: *mut i8, __size: SizeT) -> *mut i8;
    fn getwd(__buf: *mut i8) -> *mut i8;
    fn dup(__fd: i32) -> i32;
    fn dup2(__fd: i32, __fd2: i32) -> i32;
    static mut __environ: *mut *mut i8;
    fn execve(__path: *const i8, __argv: *const *mut i8, __envp: *const *mut i8) -> i32;
    fn fexecve(__fd: i32, __argv: *const *mut i8, __envp: *const *mut i8) -> i32;
    fn execv(__path: *const i8, __argv: *const *mut i8) -> i32;
    fn execle(__path: *const i8, __arg: *const i8, ...) -> i32;
    fn execl(__path: *const i8, __arg: *const i8, ...) -> i32;
    fn execvp(__file: *const i8, __argv: *const *mut i8) -> i32;
    fn execlp(__file: *const i8, __arg: *const i8, ...) -> i32;
    fn nice(__inc: i32) -> i32;
    fn _exit(__status: i32) -> !;
}

#[repr(C)]
#[derive(Debug, Copy, Clone)]
pub enum _PC {
    LINK_MAX,
    MAX_CANON,
    MAX_INPUT,
    NAME_MAX,
    PATH_MAX,
    PIPE_BUF,
    CHOWN_RESTRICTED,
    NO_TRUNC,
    VDISABLE,
    SYNC_IO,
    ASYNC_IO,
    PRIO_IO,
    SOCK_MAXBUF,
    FILESIZEBITS,
    REC_INCR_XFER_SIZE,
    REC_MAX_XFER_SIZE,
    REC_MIN_XFER_SIZE,
    REC_XFER_ALIGN,
    ALLOC_SIZE_MIN,
    SYMLINK_MAX,
    _2_SYMLINKS,
}

#[repr(C)]
#[derive(Debug, Copy, Clone)]
pub enum _SC {
    ARG_MAX,
    CHILD_MAX,
    CLK_TCK,
    NGROUPS_MAX,
    OPEN_MAX,
    STREAM_MAX,
    TZNAME_MAX,
    JOB_CONTROL,
    SAVED_IDS,
    REALTIME_SIGNALS,
    PRIORITY_SCHEDULING,
    TIMERS,
    ASYNCHRONOUS_IO,
    PRIORITIZED_IO,
    SYNCHRONIZED_IO,
    FSYNC,
    MAPPED_FILES,
    MEMLOCK,
    MEMLOCK_RANGE,
    MEMORY_PROTECTION,
    MESSAGE_PASSING,
    SEMAPHORES,
    SHARED_MEMORY_OBJECTS,
    AIO_LISTIO_MAX,
    AIO_MAX,
    AIO_PRIO_DELTA_MAX,
    DELAYTIMER_MAX,
    MQ_OPEN_MAX,
    MQ_PRIO_MAX,
    VERSION,
    PAGESIZE,
    RTSIG_MAX,
    SEM_NSEMS_MAX,
    SEM_VALUE_MAX,
    SIGQUEUE_MAX,
    TIMER_MAX,
    BC_BASE_MAX,
    BC_DIM_MAX,
    BC_SCALE_MAX,
    BC_STRING_MAX,
    COLL_WEIGHTS_MAX,
    EQUIV_CLASS_MAX,
    EXPR_NEST_MAX,
    LINE_MAX,
    RE_DUP_MAX,
    CHARCLASS_NAME_MAX,
    _2_VERSION,
    _2_C_BIND,
    _2_C_DEV,
    _2_FORT_DEV,
    _2_FORT_RUN,
    _2_SW_DEV,
    _2_LOCALEDEF,
    PII,
    PII_XTI,
    PII_SOCKET,
    PII_INTERNET,
    PII_OSI,
    POLL,
    SELECT,
    UIO_MAXIOV,
    PII_INTERNET_STREAM,
    PII_INTERNET_DGRAM,
    PII_OSI_COTS,
    PII_OSI_CLTS,
    PII_OSI_M,
    T_IOV_MAX,
    THREADS,
    THREAD_SAFE_FUNCTIONS,
    GETGR_R_SIZE_MAX,
    GETPW_R_SIZE_MAX,
    LOGIN_NAME_MAX,
    TTY_NAME_MAX,
    THREAD_DESTRUCTOR_ITERATIONS,
    THREAD_KEYS_MAX,
    THREAD_STACK_MIN,
    THREAD_THREADS_MAX,
    THREAD_ATTR_STACKADDR,
    THREAD_ATTR_STACKSIZE,
    THREAD_PRIORITY_SCHEDULING,
    THREAD_PRIO_INHERIT,
    THREAD_PRIO_PROTECT,
    THREAD_PROCESS_SHARED,
    NPROCESSORS_CONF,
    NPROCESSORS_ONLN,
    PHYS_PAGES,
    AVPHYS_PAGES,
    ATEXIT_MAX,
    PASS_MAX,
    XOPEN_VERSION,
    XOPEN_XCU_VERSION,
    XOPEN_UNIX,
    XOPEN_CRYPT,
    XOPEN_ENH_I18N,
    XOPEN_SHM,
    _2_CHAR_TERM,
    _2_C_VERSION,
    _2_UPE,
    XOPEN_XPG2,
    XOPEN_XPG3,
    XOPEN_XPG4,
    CHAR_BIT,
    CHAR_MAX,
    CHAR_MIN,
    INT_MAX,
    INT_MIN,
    LONG