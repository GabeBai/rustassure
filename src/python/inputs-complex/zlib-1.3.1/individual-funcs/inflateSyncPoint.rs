```rust
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
type Bytef = Byte;
type Charf = i8;
type Intf = i32;
type UIntf = UInt;
type ULongf = ULong;
type Voidpc = *const core::ffi::c_void;
type Voidpf = *mut core::ffi::c_void;
type Voidp = *mut core::ffi::c_void;
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
type UsecondsT = UInt;
type SusecondsT = isize;
type Suseconds64T = isize;
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
type SyscallSLongT = isize;
type SyscallULongT = usize;
type LOffT = Off64T;
type CAddrT = *mut i8;
type IntPtrT = isize;
type SockLenT = UInt;
type SigAtomicT = i32;
type UChar = UChar;
type UShort = UShort;
type UInt = UInt;
type ULong = ULong;
type QuadT = QuadT;
type UQuadT = UQuadT;
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
    tv_usec: SusecondsT,
}

#[repr(C)]
struct TimeSpec {
    tv_sec: TimeT,
    tv_nsec: SyscallSLongT,
}

type SusecondsT = SusecondsT;
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
    __value32: AtomicWideCounterValue32,
}

#[repr(C)]
struct AtomicWideCounterValue32 {
    __low: u32,
    __high: u32,
}

#[repr(C)]
struct PthreadInternalList {
    __prev: *mut PthreadInternalList,
    __next: *mut PthreadInternalList,
}

type PthreadListT = PthreadInternalList;

#[repr(C)]
struct PthreadInternalSList {
    __next: *mut PthreadInternalSList,
}

type PthreadSListT = PthreadInternalSList;

#[repr(C)]
struct PthreadMutexS {
    __lock: i32,
    __count: u32,
    __owner: i32,
    __nusers: u32,
    __kind: i32,
    __spins: i16,
    __elision: i16,
    __list: PthreadListT,
}

#[repr(C)]
struct PthreadRwLockArchT {
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
union PthreadMutexAttrT {
    __size: [u8; 4],
    __align: i32,
}

#[repr(C)]
union PthreadCondAttrT {
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
    __data: PthreadMutexS,
    __size: [u8; 40],
    __align: i64,
}

#[repr(C)]
union PthreadCondT {
    __data: PthreadCondS,
    __size: [u8; 48],
    __align: i64,
}

#[repr(C)]
union PthreadRwLockT {
    __data: PthreadRwLockArchT,
    __size: [u8; 56],
    __align: i64,
}

#[repr(C)]
union PthreadRwLockAttrT {
    __size: [u8; 8],
    __align: i64,
}

type PthreadSpinLockT = i32;

#[repr(C)]
union PthreadBarrierT {
    __size: [u8; 32],
    __align: i64,
}

#[repr(C)]
union PthreadBarrierAttrT {
    __size: [u8; 4],
    __align: i32,
}

type VaList = core::ffi::VaListImpl;
type UsecondsT = UsecondsT;
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
    fn pathconf(__path: *const i8, __name: i32) -> isize;
    fn fpathconf(__fd: i32, __name: i32) -> isize;
    fn sysconf(__name: i32) -> isize;
    fn confstr(__name: i32, __buf: *mut i8, __len: SizeT) -> SizeT;
    fn getpid() -> PidT;
    fn getppid() -> PidT;
    fn getpgrp() -> PidT;
    fn __getpgid(__pid: PidT) -> PidT;
    fn getpgid(__pid: PidT) -> PidT;
    fn setpgid(__pid: PidT, __pgid: PidT) -> i32;
    fn setpgrp() -> i32;
    fn setsid() -> PidT;
    fn getsid(__pid: PidT) -> PidT;
    fn getuid() -> UidT;
    fn geteuid() -> UidT;
    fn getgid() -> GidT;
    fn getegid() -> GidT;
    fn getgroups(__size: i32, __list: *mut GidT) -> i32;
    fn setuid(__uid: UidT) -> i32;
    fn setreuid(__ruid: UidT, __euid: UidT) -> i32;
    fn seteuid(__uid: UidT) -> i32;
    fn setgid(__gid: GidT) -> i32;
    fn setregid(__rgid: GidT, __egid: GidT) -> i32;
    fn setegid(__gid: GidT) -> i32;
    fn fork() -> PidT;
    fn vfork() -> PidT;
    fn ttyname(__fd: i32) -> *mut i8;
    fn ttyname_r(__fd: i32, __buf: *mut i8, __buflen: SizeT) -> i32;
    fn isatty(__fd: i32) -> i32;
    fn ttyslot() -> i32;
    fn link(__from: *const i8, __to: *const i8) -> i32;
    fn linkat(__fromfd: i32, __from: *const i8, __tofd: i32, __to: *const i8, __flags: i32) -> i32;
    fn symlink(__from: *const i8, __to: *const i8) -> i32;
    fn readlink(__path: *const i8, __buf: *mut i8, __len: SizeT) -> SSizeT;
    fn symlinkat(__from: *const i8, __tofd: i32, __to: *const i8) -> i32;
    fn readlinkat(__fd: i32, __path: *const i8, __buf: *mut i8, __len: SizeT) -> SSizeT;
    fn unlink(__name: *const i8) -> i32;
    fn unlinkat(__fd: i32, __name: *const i8, __flag: i32) -> i32;
    fn rmdir(__path: *const i8) -> i32;
    fn tcgetpgrp(__fd: i32) -> PidT;
    fn tcsetpgrp(__fd: i32, __pgrp_id: PidT) -> i32;
    fn getlogin() -> *mut i8;
    fn getlogin_r(__name: *mut i8, __name_len: SizeT) -> i32;
    fn setlogin(__name: *const i8) -> i32;
    fn gethostname(__name: *mut i8, __len: SizeT) -> i32;
    fn sethostname(__name: *const i8, __len: SizeT) -> i32;
    fn sethostid(__id: i64) -> i32;
    fn getdomainname(__name: *mut i8, __len: SizeT) -> i32;
    fn setdomainname(__name: *const i8, __len: SizeT) -> i32;
    fn vhangup() -> i32;
    fn revoke(__file: *const i8) -> i32;
    fn profil(__sample_buffer: *mut u16, __size: SizeT,