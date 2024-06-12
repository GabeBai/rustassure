type PtrDiffT = isize;
type SizeT = usize;
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
type VoidPC = *const std::ffi::c_void;
type VoidPF = *mut std::ffi::c_void;
type VoidP = *mut std::ffi::c_void;
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
type QuadT = i64;
type UQuadT = u64;
type IntMaxT = i64;
type UIntMaxT = u64;
type DevT = u64;
type UidT = u32;
type GidT = u32;
type InoT = u64;
type Ino64T = u64;
type ModeT = u32;
type NLinkT = u64;
type OffT = i64;
type Off64T = i64;
type PidT = i32;

#[repr(C)]
struct FsidT {
    __val: [i32; 2],
}

type ClockT = i64;
type RLimT = u64;
type RLim64T = u64;
type IdT = u32;
type TimeT = i64;
type UsecondsT = u32;
type SusecondsT = i64;
type Suseconds64T = i64;
type DAddrT = i32;
type KeyT = i32;
type ClockIdT = i32;
type TimerT = *mut std::ffi::c_void;
type BlkSizeT = i64;
type BlkCntT = i64;
type BlkCnt64T = i64;
type FsBlkCntT = u64;
type FsBlkCnt64T = u64;
type FsFilCntT = u64;
type FsFilCnt64T = u64;
type FsWordT = i64;
type SSizeT = isize;
type SyscallSLongT = i64;
type SyscallULongT = u64;
type LOffT = Off64T;
type CAddrT = *mut i8;
type IntPtrT = isize;
type SockLenT = u32;
type SigAtomicT = i32;
type UChar = u8;
type UShort = u16;
type UInt = u32;
type ULong = u64;
type QuadT = i64;
type UQuadT = u64;
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
type ULong = u64;
type UShort = u16;
type UInt = u32;
type Int8T = i8;
type Int16T = i16;
type Int32T = i32;
type Int64T = i64;
type UInt8T = u8;
type UInt16T = u16;
type UInt32T = u32;
type UInt64T = u64;

#[repr(C)]
struct SigSetT {
    __val: [u64; 1024 / (8 * std::mem::size_of::<u64>())],
}

type SigSetT = SigSetT;

#[repr(C)]
struct Timeval {
    tv_sec: TimeT,
    tv_usec: SusecondsT,
}

#[repr(C)]
struct Timespec {
    tv_sec: TimeT,
    tv_nsec: SyscallSLongT,
}

type SusecondsT = SusecondsT;
type FdMask = i64;

#[repr(C)]
struct FdSet {
    __fds_bits: [FdMask; 1024 / (8 * std::mem::size_of::<FdMask>())],
}

type FdMask = FdMask;

extern "C" {
    fn select(
        __nfds: i32,
        __readfds: *mut FdSet,
        __writefds: *mut FdSet,
        __exceptfds: *mut FdSet,
        __timeout: *mut Timeval,
    ) -> i32;
    fn pselect(
        __nfds: i32,
        __readfds: *mut FdSet,
        __writefds: *mut FdSet,
        __exceptfds: *mut FdSet,
        __timeout: *const Timespec,
        __sigmask: *const SigSetT,
    ) -> i32;
}

type BlkSizeT = i64;
type BlkCntT = i64;
type FsBlkCntT = u64;
type FsFilCntT = u64;
type BlkCnt64T = i64;
type FsBlkCnt64T = u64;
type FsFilCnt64T = u64;

#[repr(C)]
union AtomicWideCounter {
    __value64: u64,
    __value32: Value32,
}

#[repr(C)]
struct Value32 {
    __low: u32,
    __high: u32,
}

#[repr(C)]
struct PThreadInternalList {
    __prev: *mut PThreadInternalList,
    __next: *mut PThreadInternalList,
}

#[repr(C)]
struct PThreadInternalSList {
    __next: *mut PThreadInternalSList,
}

#[repr(C)]
struct PThreadMutexS {
    __lock: i32,
    __count: u32,
    __owner: i32,
    __nusers: u32,
    __kind: i32,
    __spins: i16,
    __elision: i16,
    __list: PThreadInternalList,
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

type TSST = u32;
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
    __align: i64,
}

#[repr(C)]
union PThreadMutexT {
    __data: PThreadMutexS,
    __size: [u8; 40],
    __align: i64,
}

#[repr(C)]
union PThreadCondT {
    __data: PThreadCondS,
    __size: [u8; 48],
    __align: i64,
}

#[repr(C)]
union PThreadRwLockT {
    __data: PThreadRwLockArchT,
    __size: [u8; 56],
    __align: i64,
}

#[repr(C)]
union PThreadRwLockAttrT {
    __size: [u8; 8],
    __align: i64,
}

type PThreadSpinlockT = i32;

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

type VaList = *mut std::ffi::c_void;
type GNucVaList = VaList;
type UsecondsT = u32;
type IntPtrT = isize;
type SockLenT = u32;

extern "C" {
    fn access(__name: *const i8, __type: i32) -> i32;
    fn faccessat(__fd: i32, __file: *const i8, __type: i32, __flag: i32) -> i32;
    fn lseek(__fd: i32, __offset: OffT, __whence: i32) -> OffT;
    fn lseek64(__fd: i32, __offset: Off64T, __whence: i32) -> Off64T;
    fn close(__fd: i32) -> i32;
    fn closefrom(__lowfd: i32);
    fn read(__fd: i32, __buf: *mut std::ffi::c_void, __nbytes: SizeT) -> SSizeT;
    fn write(__fd: i32, __buf: *const std::ffi::c_void, __n: SizeT) -> SSizeT;
    fn pread(__fd: i32, __buf: *mut std::ffi::c_void, __nbytes: SizeT, __offset: OffT) -> SSizeT;
    fn pwrite(__fd: i32, __buf: *const std::ffi::c_void, __n: SizeT, __offset: OffT) -> SSizeT;
    fn pread64(__fd: i32, __buf: *mut std::ffi::c_void, __nbytes: SizeT, __offset: Off64T) -> SSizeT;
    fn pwrite64(__fd: i32, __buf: *const std::ffi::c_void, __n: SizeT, __offset: Off64T) -> SSizeT;
    fn pipe(__pipedes: *mut i32) -> i32;
    fn alarm(__seconds: u32) -> u32;
    fn sleep(__seconds: u32) -> u32;
    fn ualarm(__value: UsecondsT, __interval: UsecondsT) -> UsecondsT;
    fn usleep(__useconds: UsecondsT) -> i32;
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
    fn execve(__path: *const i8, __argv: *const *mut i8, __envp: *const *mut i8) -> i32;
    fn fexecve(__fd: i32, __argv: *const *mut i8, __envp: *const *mut i8) -> i32;
    fn execv(__path: *const i8, __argv: *const *mut i8) -> i32;
    fn execle(__path: *const i8, __arg: *const i8, ...) -> i32;
    fn execl(__path: *const i8, __arg: *const i8, ...) -> i32;
    fn execvp(__file: *const i8, __argv: *const *mut i8) -> i32;
    fn execlp(__file: *const i8, __arg: *const i8, ...) -> i32;
    fn nice(__inc: i32) -> i32;
    fn _exit(__status: i32);
}

#[repr(C)]
enum Pc {
    LinkMax,
    MaxCanon,
    MaxInput,
    NameMax,
    PathMax,
    PipeBuf,
    ChownRestricted,
    NoTrunc,
    VDisable,
    SyncIo,
    AsyncIo,
    PrioIo,
    SockMaxBuf,
    FileSizeBits,
    RecIncrXferSize,
    RecMaxXferSize,
    RecMinXferSize,
    RecXferAlign,
    AllocSizeMin,
    SymlinkMax,
    TwoSymlinks,
}

#[repr(C)]
enum Sc {
    ArgMax,
    ChildMax,
    ClkTck,
    NgroupsMax,
    OpenMax,
    StreamMax,
    TznameMax,
    JobControl,
    SavedIds,
    RealtimeSignals,
    PriorityScheduling,
    Timers,
    AsynchronousIo,
    PrioritizedIo,
    SynchronizedIo,
    Fsync,
    MappedFiles,
    Memlock,
    MemlockRange,
    MemoryProtection,
    MessagePassing,
    Semaphores,
    SharedMemoryObjects,
    AioListioMax,
    AioMax,
    AioPrioDeltaMax,
    DelaytimerMax,
    MqOpenMax,
    MqPrioMax,
    Version,
    Pagesize,
    RtsigMax,
    SemNsemsMax,
    SemValueMax,
    SigqueueMax,
    TimerMax,
    BcBaseMax,
    BcDimMax,
    BcScaleMax,
    BcStringMax,
    CollWeightsMax,
    EquivClassMax,
    ExprNestMax,
    LineMax,
    ReDupMax,
    CharclassNameMax,
    TwoVersion,
    TwoCBind,
    TwoCDev,
    TwoFortDev,
    TwoFortRun,
    TwoSwDev,
    TwoLocaledef,
    Pii,
    PiiXti,
    PiiSocket,
    PiiInternet,
    PiiOsi,
    Poll,
    Select,
    UioMaxiov,
    IovMax,
    PiiInternetStream,
    PiiInternetDgram,
    PiiOsiCots,
    PiiOsiClts,
    PiiOsiM,
    TIovMax,
    Threads,
    ThreadSafeFunctions,
    GetgrRSizeMax,
    GetpwRSizeMax,
    LoginNameMax,
    TtyNameMax,
    ThreadDestructorIterations,
    ThreadKeysMax,
    ThreadStackMin,
    ThreadThreadsMax,
    ThreadAttrStackaddr,
    ThreadAttrStacksize,
    ThreadPriorityScheduling,
    ThreadPrioInherit,
    ThreadPrioProtect,
    ThreadProcessShared,
    NprocessorsConf,
    NprocessorsOnln,
    PhysPages,
    AvphysPages,
    AtexitMax,
    PassMax,
    XopenVersion,
    XopenXcuVersion,
    XopenUnix,
    XopenCrypt,
    XopenEnhI18n,
    XopenShm,
    TwoCharTerm,
    TwoCVersion,
    TwoUpe,
    XopenXpg2,
    XopenXpg3,
    XopenXpg4,
    CharBit,
    CharMax,
    CharMin,
    IntMax,
    IntMin,
    LongBit,
    WordBit,
    MbLenMax,
    Nzero,
    SsizeMax,
    SCharMax,
    SCharMin,
    ShrtMax,
    ShrtMin,
    UCharMax,
    UIntMax,
    ULongMax,
    UShRtMax,
    NlArgmax,
    NlLangmax,
    NlMsgmax,
    NlNmax,
    NlSetmax,
    NlTextmax,
    Xbs5Ilp32Off32,
    Xbs5Ilp32Offbig,
    Xbs5Lp64Off64,
    Xbs5LpbigOffbig,
    XopenLegacy,
    XopenRealtime,
    XopenRealtimeThreads,
    AdvisoryInfo,
    Barriers,
    Base,
    CLangSupport,
    CLangSupportR,
    ClockSelection,
    Cputime,
    ThreadCputime,
    DeviceIo,
    DeviceSpecific,
    DeviceSpecificR,
    FdMgmt,
    Fifo,
    Pipe,
    FileAttributes,
    FileLocking,
    FileSystem,
    MonotonicClock,
    MultiProcess,
    SingleProcess,
    Networking,
    ReaderWriterLocks,
    SpinLocks,
    Regexp,
    RegexVersion,
    Shell,
    Signals,
    Spawn,
    SporadicServer,
    ThreadSporadicServer,
    SystemDatabase,
    SystemDatabaseR,
    Timeouts,
    TypedMemoryObjects,
    UserGroups,
    UserGroupsR,
    TwoPbs,
    TwoPbsAccounting,
    TwoPbsLocate,
   