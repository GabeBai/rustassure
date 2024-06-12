type PtrdiffT = isize;
type SizeT = usize;
type WcharT = i32;

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
type QuadT = isize;
type UQuadT = usize;
type IntMaxT = isize;
type UIntMaxT = usize;
type DevT = usize;
type UidT = u32;
type GidT = u32;
type InoT = usize;
type Ino64T = usize;
type ModeT = u32;
type NlinkT = usize;
type OffT = isize;
type Off64T = isize;
type PidT = i32;

#[repr(C)]
struct FsidT {
    __val: [i32; 2],
}

type ClockT = isize;
type RlimT = usize;
type Rlim64T = usize;
type IdT = u32;
type TimeT = isize;
type UsecondsT = u32;
type SusecondsT = isize;
type Suseconds64T = isize;
type DaddrT = i32;
type KeyT = i32;
type ClockidT = i32;
type TimerT = *mut std::ffi::c_void;
type BlksizeT = isize;
type BlkcntT = isize;
type Blkcnt64T = isize;
type FsblkcntT = usize;
type Fsblkcnt64T = usize;
type FsfilcntT = usize;
type Fsfilcnt64T = usize;
type FswordT = isize;
type SsizeT = isize;
type SyscallSlongT = isize;
type SyscallUlongT = usize;
type LoffT = Off64T;
type CaddrT = *mut i8;
type IntptrT = isize;
type SocklenT = u32;
type SigAtomicT = i32;
type UChar = u8;
type UShort = u16;
type UInt = u32;
type ULong = u64;
type QuadT = isize;
type UQuadT = usize;
type FsidT = FsidT;
type LoffT = LoffT;
type InoT = InoT;
type Ino64T = Ino64T;
type DevT = DevT;
type GidT = GidT;
type ModeT = ModeT;
type NlinkT = NlinkT;
type UidT = UidT;
type OffT = OffT;
type Off64T = Off64T;
type PidT = PidT;
type IdT = IdT;
type SsizeT = SsizeT;
type DaddrT = DaddrT;
type CaddrT = CaddrT;
type KeyT = KeyT;
type ClockT = ClockT;
type ClockidT = ClockidT;
type TimeT = TimeT;
type TimerT = TimerT;
type Ulong = u64;
type Ushort = u16;
type Uint = u32;
type Int8T = i8;
type Int16T = i16;
type Int32T = i32;
type Int64T = i64;
type UInt8T = u8;
type UInt16T = u16;
type UInt32T = u32;
type UInt64T = u64;

#[repr(C)]
struct SigsetT {
    __val: [u64; 1024 / (8 * std::mem::size_of::<u64>())],
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

type SusecondsT = SusecondsT;
type FdMask = isize;

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
        __sigmask: *const SigsetT,
    ) -> i32;
}

type BlksizeT = BlksizeT;
type BlkcntT = BlkcntT;
type FsblkcntT = FsblkcntT;
type FsfilcntT = FsfilcntT;
type Blkcnt64T = Blkcnt64T;
type Fsblkcnt64T = Fsblkcnt64T;
type Fsfilcnt64T = Fsfilcnt64T;

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
struct PthreadInternalList {
    __prev: *mut PthreadInternalList,
    __next: *mut PthreadInternalList,
}

#[repr(C)]
struct PthreadInternalSlist {
    __next: *mut PthreadInternalSlist,
}

#[repr(C)]
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

#[repr(C)]
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

#[repr(C)]
struct PthreadCondS {
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
    __align: isize,
}

type PthreadAttrT = PthreadAttrT;

#[repr(C)]
union PthreadMutexT {
    __data: PthreadMutexS,
    __size: [u8; 40],
    __align: isize,
}

#[repr(C)]
union PthreadCondT {
    __data: PthreadCondS,
    __size: [u8; 48],
    __align: i64,
}

#[repr(C)]
union PthreadRwlockT {
    __data: PthreadRwlockArchT,
    __size: [u8; 56],
    __align: isize,
}

#[repr(C)]
union PthreadRwlockattrT {
    __size: [u8; 8],
    __align: isize,
}

type PthreadSpinlockT = i32;

#[repr(C)]
union PthreadBarrierT {
    __size: [u8; 32],
    __align: isize,
}

#[repr(C)]
union PthreadBarrierattrT {
    __size: [u8; 4],
    __align: i32,
}

type VaList = std::ffi::VaListImpl;
type GnucVaList = VaList;
type UsecondsT = UsecondsT;
type IntptrT = IntptrT;
type SocklenT = SocklenT;

extern "C" {
    fn access(__name: *const i8, __type: i32) -> i32;
    fn faccessat(__fd: i32, __file: *const i8, __type: i32, __flag: i32) -> i32;
    fn lseek(__fd: i32, __offset: OffT, __whence: i32) -> OffT;
    fn lseek64(__fd: i32, __offset: Off64T, __whence: i32) -> Off64T;
    fn close(__fd: i32) -> i32;
    fn closefrom(__lowfd: i32);
    fn read(__fd: i32, __buf: *mut std::ffi::c_void, __nbytes: SizeT) -> SsizeT;
    fn write(__fd: i32, __buf: *const std::ffi::c_void, __n: SizeT) -> SsizeT;
    fn pread(__fd: i32, __buf: *mut std::ffi::c_void, __nbytes: SizeT, __offset: OffT) -> SsizeT;
    fn pwrite(__fd: i32, __buf: *const std::ffi::c_void, __n: SizeT, __offset: OffT) -> SsizeT;
    fn pread64(__fd: i32, __buf: *mut std::ffi::c_void, __nbytes: SizeT, __offset: Off64T) -> SsizeT;
    fn pwrite64(__fd: i32, __buf: *const std::ffi::c_void, __n: SizeT, __offset: Off64T) -> SsizeT;
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
enum PcValues {
    PcLinkMax,
    PcMaxCanon,
    PcMaxInput,
    PcNameMax,
    PcPathMax,
    PcPipeBuf,
    PcChownRestricted,
    PcNoTrunc,
    PcVdisable,
    PcSyncIo,
    PcAsyncIo,
    PcPrioIo,
    PcSockMaxbuf,
    PcFilesizebits,
    PcRecIncrXferSize,
    PcRecMaxXferSize,
    PcRecMinXferSize,
    PcRecXferAlign,
    PcAllocSizeMin,
    PcSymlinkMax,
    Pc2Symlinks,
}

#[repr(C)]
enum ScValues {
    ScArgMax,
    ScChildMax,
    ScClkTck,
    ScNgroupsMax,
    ScOpenMax,
    ScStreamMax,
    ScTznameMax,
    ScJobControl,
    ScSavedIds,
    ScRealtimeSignals,
    ScPriorityScheduling,
    ScTimers,
    ScAsynchronousIo,
    ScPrioritizedIo,
    ScSynchronizedIo,
    ScFsync,
    ScMappedFiles,
    ScMemlock,
    ScMemlockRange,
    ScMemoryProtection,
    ScMessagePassing,
    ScSemaphores,
    ScSharedMemoryObjects,
    ScAioListioMax,
    ScAioMax,
    ScAioPrioDeltaMax,
    ScDelaytimerMax,
    ScMqOpenMax,
    ScMqPrioMax,
    ScVersion,
    ScPagesize,
    ScRtsigMax,
    ScSemNsemsMax,
    ScSemValueMax,
    ScSigqueueMax,
    ScTimerMax,
    ScBcBaseMax,
    ScBcDimMax,
    ScBcScaleMax,
    ScBcStringMax,
    ScCollWeightsMax,
    ScEquivClassMax,
    ScExprNestMax,
    ScLineMax,
    ScReDupMax,
    ScCharclassNameMax,
    Sc2Version,
    Sc2CBind,
    Sc2CDev,
    Sc2FortDev,
    Sc2FortRun,
    Sc2SwDev,
    Sc2Localedef,
    ScPii,
    ScPiiXti,
    ScPiiSocket,
    ScPiiInternet,
    ScPiiOsi,
    ScPoll,
    ScSelect,
    ScUioMaxiov,
    ScIovMax = ScUioMaxiov,
    ScPiiInternetStream,
    ScPiiInternetDgram,
    ScPiiOsiCots,
    ScPiiOsiClts,
    ScPiiOsiM,
    ScTIovMax,
    ScThreads,
    ScThreadSafeFunctions,
    ScGetgrRSizeMax,
    ScGetpwRSizeMax,
    ScLoginNameMax,
    ScTtyNameMax,
    ScThreadDestructorIterations,
    ScThreadKeysMax,
    ScThreadStackMin,
    ScThreadThreadsMax,
    ScThreadAttrStackaddr,
    ScThreadAttrStacksize,
    ScThreadPriorityScheduling,
    ScThreadPrioInherit,
    ScThreadPrioProtect,
    ScThreadProcessShared,
    ScNprocessorsConf,
    ScNprocessorsOnln,
    ScPhysPages,
    ScAvphysPages,
    ScAtexitMax,
    ScPassMax,
    ScXopenVersion,
    ScXopenXcuVersion,
    ScXopenUnix,
    ScXopenCrypt,
    ScXopenEnhI18n,
    ScXopenShm,
    Sc2CharTerm,
    Sc2CVersion,
    Sc2Upe,
    ScXopenXpg2,
    ScXopenXpg3,
    ScXopenXpg4,
    ScCharBit,
    ScCharMax,
    ScCharMin,
    ScIntMax,
    ScIntMin,
    ScLongBit,
    ScWordBit,
    ScMbLenMax,
    ScNzero,
    ScSsizeMax,
    ScScharMax,
    ScScharMin,
    ScShrMax,
    ScShrMin,
    ScUcharMax,
    ScUintMax,
    ScUlongMax,
    ScUshrtMax,
    ScNlArgmax,
    ScNlLangmax,
    ScNlMsgmax,
    ScNlNmax,
    ScNlSetmax,
    ScNlTextmax,
    ScXbs5Ilp32Off32,
    ScXbs5Ilp32Offbig,
    ScXbs5Lp64Off64,
    ScXbs5LpbigOffbig,
    ScXopenLegacy,
    ScXopenRealtime,
    ScXopenRealtimeThreads,
    ScAdvisoryInfo,
    ScBarriers,
    ScBase,
    ScCLang