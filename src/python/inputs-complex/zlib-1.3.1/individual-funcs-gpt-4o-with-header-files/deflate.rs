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
type __FsidT = [i32; 2];
type __ClockT = i64;
type __RlimT = u64;
type __Rlim64T = u64;
type __IdT = u32;
type __TimeT = i64;
type __UsecondsT = u32;
type __SusecondsT = i64;
type __Suseconds64T = i64;
type __DaddrT = i32;
type __KeyT = i32;
type __ClockidT = i32;
type __TimerT = *mut core::ffi::c_void;
type __BlksizeT = i64;
type __BlkcntT = i64;
type __Blkcnt64T = i64;
type __FsblkcntT = u64;
type __Fsblkcnt64T = u64;
type __FsfilcntT = u64;
type __Fsfilcnt64T = u64;
type __FswordT = i64;
type __SsizeT = i64;
type __SyscallSLongT = i64;
type __SyscallULongT = u64;
type __LoffT = __Off64T;
type __CaddrT = *mut i8;
type __IntptrT = i64;
type __SocklenT = u32;
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
type SsizeT = __SsizeT;
type DaddrT = __DaddrT;
type CaddrT = __CaddrT;
type KeyT = __KeyT;
type ClockT = __ClockT;
type ClockidT = __ClockidT;
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
type RegisterT = i64;

#[repr(C)]
struct __SigsetT {
    __val: [u64; 1024 / (8 * core::mem::size_of::<u64>())],
}

type SigsetT = __SigsetT;

#[repr(C)]
struct Timeval {
    tv_sec: __TimeT,
    tv_usec: __SusecondsT,
}

#[repr(C)]
struct Timespec {
    tv_sec: __TimeT,
    tv_nsec: __SyscallSLongT,
}

type SusecondsT = __SusecondsT;
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
        __timeout: *mut Timeval,
    ) -> i32;
    fn pselect(
        __nfds: i32,
        __readfds: *mut FdSet,
        __writefds: *mut FdSet,
        __exceptfds: *mut FdSet,
        __timeout: *const Timespec,
        __sigmask: *const __SigsetT,
    ) -> i32;
}

type BlksizeT = __BlksizeT;
type BlkcntT = __BlkcntT;
type FsblkcntT = __FsblkcntT;
type FsfilcntT = __FsfilcntT;
type Blkcnt64T = __Blkcnt64T;
type Fsblkcnt64T = __Fsblkcnt64T;
type Fsfilcnt64T = __Fsfilcnt64T;

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
struct __PthreadInternalList {
    __prev: *mut __PthreadInternalList,
    __next: *mut __PthreadInternalList,
}

type __PthreadListT = __PthreadInternalList;

#[repr(C)]
struct __PthreadInternalSlist {
    __next: *mut __PthreadInternalSlist,
}

type __PthreadSlistT = __PthreadInternalSlist;

#[repr(C)]
struct __PthreadMutexS {
    __lock: i32,
    __count: u32,
    __owner: i32,
    __nusers: u32,
    __kind: i32,
    __spins: i16,
    __elision: i16,
    __list: __PthreadListT,
}

#[repr(C)]
struct __PthreadRwlockArchT {
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
struct __PthreadCondS {
    __wseq: __AtomicWideCounter,
    __g1_start: __AtomicWideCounter,
    __g_refs: [u32; 2],
    __g_size: [u32; 2],
    __g1_orig_size: u32,
    __wrefs: u32,
    __g_signals: [u32; 2],
}

type __TssT = u32;
type __ThrdT = u64;

#[repr(C)]
struct __OnceFlag {
    __data: i32,
}

type PthreadT = u64;

#[repr(C)]
union PthreadMutexattrT {
    __size: [u8; 4],
    __align: i32,
}

#[repr(C)]
union PthreadCondattrT {
    __size: [u8; 4],
    __align: i32,
}

type PthreadKeyT = u32;
type PthreadOnceT = i32;

#[repr(C)]
union PthreadAttrT {
    __size: [u8; 56],
    __align: i64,
}

#[repr(C)]
union PthreadMutexT {
    __data: __PthreadMutexS,
    __size: [u8; 40],
    __align: i64,
}

#[repr(C)]
union PthreadCondT {
    __data: __PthreadCondS,
    __size: [u8; 48],
    __align: i64,
}

#[repr(C)]
union PthreadRwlockT {
    __data: __PthreadRwlockArchT,
    __size: [u8; 56],
    __align: i64,
}

#[repr(C)]
union PthreadRwlockattrT {
    __size: [u8; 8],
    __align: i64,
}

type PthreadSpinlockT = i32;

#[repr(C)]
union PthreadBarrierT {
    __size: [u8; 32],
    __align: i64,
}

#[repr(C)]
union PthreadBarrierattrT {
    __size: [u8; 4],
    __align: i32,
}

type VaList = core::ffi::VaListImpl;
type __GnucVaList = VaList;
type UsecondsT = __UsecondsT;
type IntptrT = __IntptrT;
type SocklenT = __SocklenT;

extern "C" {
    fn access(__name: *const i8, __type: i32) -> i32;
    fn faccessat(__fd: i32, __file: *const i8, __type: i32, __flag: i32) -> i32;
    fn lseek(__fd: i32, __offset: __OffT, __whence: i32) -> __OffT;
    fn lseek64(__fd: i32, __offset: __Off64T, __whence: i32) -> __Off64T;
    fn close(__fd: i32) -> i32;
    fn closefrom(__lowfd: i32);
    fn read(__fd: i32, __buf: *mut core::ffi::c_void, __nbytes: SizeT) -> __SsizeT;
    fn write(__fd: i32, __buf: *const core::ffi::c_void, __n: SizeT) -> __SsizeT;
    fn pread(__fd: i32, __buf: *mut core::ffi::c_void, __nbytes: SizeT, __offset: __OffT) -> __SsizeT;
    fn pwrite(__fd: i32, __buf: *const core::ffi::c_void, __n: SizeT, __offset: __OffT) -> __SsizeT;
    fn pread64(__fd: i32, __buf: *mut core::ffi::c_void, __nbytes: SizeT, __offset: __Off64T) -> __SsizeT;
    fn pwrite64(__fd: i32, __buf: *const core::ffi::c_void, __n: SizeT, __offset: __Off64T) -> __SsizeT;
    fn pipe(__pipedes: *mut i32) -> i32;
    fn alarm(__seconds: u32) -> u32;
    fn sleep(__seconds: u32) -> u32;
    fn ualarm(__value: UsecondsT, __interval: UsecondsT) -> UsecondsT;
    fn usleep(__useconds: UsecondsT) -> i32;
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

enum _Pc {
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
    SockMaxbuf,
    Filesizebits,
    RecIncrXferSize,
    RecMaxXferSize,
    RecMinXferSize,
    RecXferAlign,
    AllocSizeMin,
    SymlinkMax,
    _2Symlinks,
}

enum _Sc {
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
    _2Version,
    _2CBIND,
    _2CDev,
    _2FortDev,
    _2FortRun,
    _2SWDev,
    _2LocaleDef,
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
    TIoVMax,
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
    XopenEnhI18N,
    XopenShm,
    _2CharTerm,
    _2CVersion,
    _2Upe,
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
    ScharMax,
    ScharMin,
    ShrtMax,
    ShrtMin,
    UcharMax,
    UintMax,
    UlongMax,
    UshrtMax,
    NlArgmax,
    NlLangmax,
    NlMsgmax,
    NlN