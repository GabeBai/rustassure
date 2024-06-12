type PtrDiffT = isize;
type SizeT = usize;
type WCharT = i32;
#[repr(align(8))]
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
type DevT = u64;
type UidT = u32;
type GidT = u32;
type InoT = u64;
type Ino64T = u64;
type ModeT = u32;
type NLinkT = u64;
type OffT = isize;
type Off64T = isize;
type PidT = i32;
#[repr(C)]
struct FsidT {
    __val: [i32; 2],
}
type ClockT = isize;
type RLimT = u64;
type RLim64T = u64;
type IdT = u32;
type TimeT = isize;
type USecondsT = u32;
type SUsecondsT = isize;
type SUseconds64T = isize;
type DAddrT = i32;
type KeyT = i32;
type ClockIdT = i32;
type TimerT = *mut std::ffi::c_void;
type BlkSizeT = isize;
type BlkCntT = isize;
type BlkCnt64T = isize;
type FsBlkCntT = u64;
type FsBlkCnt64T = u64;
type FsFilCntT = u64;
type FsFilCnt64T = u64;
type FsWordT = isize;
type SSizeT = isize;
type SyscallSLongT = isize;
type SyscallULongT = usize;
type LOffT = Off64T;
type CAddrT = *mut i8;
type IntPtrT = isize;
type SockLenT = u32;
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
struct TimeVal {
    tv_sec: TimeT,
    tv_usec: SUsecondsT,
}
#[repr(C)]
struct TimeSpec {
    tv_sec: TimeT,
    tv_nsec: SyscallSLongT,
}
type SUsecondsT = SUsecondsT;
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
type PThreadSpinLockT = std::sync::atomic::AtomicI32;
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
type VaList = std::ffi::VaList;
type UsecondsT = USecondsT;
type IntPtrT = IntPtrT;
type SockLenT = SockLenT;
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
#[derive(Debug, Clone, Copy)]
enum PcEnum {
    PcLinkMax,
    PcMaxCanon,
    PcMaxInput,
    PcNameMax,
    PcPathMax,
    PcPipeBuf,
    PcChownRestricted,
    PcNoTrunc,
    PcVDisable,
    PcSyncIo,
    PcAsyncIo,
    PcPrioIo,
    PcSockMaxBuf,
    PcFileSizeBits,
    PcRecIncrXferSize,
    PcRecMaxXferSize,
    PcRecMinXferSize,
    PcRecXferAlign,
    PcAllocSizeMin,
    PcSymlinkMax,
    Pc2Symlinks,
}
#[repr(C)]
#[derive(Debug, Clone, Copy)]
enum ScEnum {
    ScArgMax,
    ScChildMax,
    ScClkTck,
    ScNGroupsMax,
    ScOpenMax,
    ScStreamMax,
    ScTzNameMax,
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
    ScDelayTimerMax,
    ScMqOpenMax,
    ScMqPrioMax,
    ScVersion,
    ScPageSize,
    ScRtsigMax,
    ScSemNSemsMax,
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
    ScCharClassNameMax,
    Sc2Version,
    Sc2CBind,
    Sc2CDev,
    Sc2FortDev,
    Sc2FortRun,
    Sc2SwDev,
    Sc2LocaleDef,
    ScPii,
    ScPiiXti,
    ScPiiSocket,
    ScPiiInternet,
    ScPiiOsi,
    ScPoll,
    ScSelect,
    ScUioMaxIov,
    ScIovMax,
    ScPiiInternetStream,
    ScPiiInternetDgram,
    ScPiiOsiCots,
    ScPiiOsiClts,
    ScPiiOsiM,
    ScTIovMax,
    ScThreads,
    ScThreadSafeFunctions,
    ScGetGrRSizeMax,
    ScGetPwRSizeMax,
    ScLoginNameMax,
    ScTtyNameMax,
    ScThreadDestructorIterations,
    ScThreadKeysMax,
    ScThreadStackMin,
    ScThreadThreadsMax,
    ScThreadAttrStackAddr,
    ScThreadAttrStackSize,
    ScThreadPriorityScheduling,
    ScThreadPrioInherit,
    ScThreadPrioProtect,
    ScThreadProcessShared,
    ScNProcessorsConf,
    ScNProcessorsOnln,
    ScPhysPages,
    ScAvPhysPages,
    ScAtExitMax,
    ScPassMax,
    ScXOpenVersion,
    ScXOpenXcuVersion,
    ScXOpenUnix,
    ScXOpenCrypt,
    ScXOpenEnhI18N,
    ScXOpenShm,
    Sc2CharTerm,
    Sc2CVersion,
    Sc2Upe,
    ScXOpenXpg2,
    ScXOpenXpg3,
    ScXOpenXpg4,
    ScCharBit,
    ScCharMax,
    ScCharMin,
    ScIntMax,
    ScIntMin,
    ScLongBit,
    ScWordBit,
    ScMbLenMax,
    ScNZero,
    ScSSizeMax,
    ScSCharMax,
    ScSCharMin,
    ScShrtMax,
    ScShrtMin,
    ScUCharMax,
    ScUIntMax,
    ScULongMax,
    ScUShRtMax,
    ScNlArgMax,
    ScNlLangMax,
    ScNlMsgMax,
    ScNlNMax,
    ScNlSetMax,
    ScNlTextMax,
    ScXbs5Ilp32Off32,
    ScXbs5Ilp32OffBig,
