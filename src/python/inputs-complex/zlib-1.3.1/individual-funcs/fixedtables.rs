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
type FsidT = [i32; 2];
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
type SSSizeT = i64;
type SyscallSLongT = i64;
type SyscallULongT = u64;
type LOffT = Off64T;
type CAddrT = *mut i8;
type IntPtrT = i64;
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
type SSSizeT = SSSizeT;
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
type RegisterT = i64;

#[repr(C)]
struct SigSetT {
    __val: [u64; 1024 / (8 * std::mem::size_of::<u64>())],
}

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
    __value32: [u32; 2],
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
struct PThreadRWLockArchT {
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
union PThreadRWLockT {
    __data: PThreadRWLockArchT,
    __size: [u8; 56],
    __align: i64,
}

#[repr(C)]
union PThreadRWLockAttrT {
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

type VaList = std::ffi::VaList;
type GNucVaList = VaList;
type UsecondsT = u32;
type IntPtrT = i64;
type SockLenT = u32;

extern "C" {
    fn access(__name: *const i8, __type: i32) -> i32;
    fn faccessat(__fd: i32, __file: *const i8, __type: i32, __flag: i32) -> i32;
    fn lseek(__fd: i32, __offset: OffT, __whence: i32) -> OffT;
    fn lseek64(__fd: i32, __offset: Off64T, __whence: i32) -> Off64T;
    fn close(__fd: i32) -> i32;
    fn closefrom(__lowfd: i32);
    fn read(__fd: i32, __buf: *mut std::ffi::c_void, __nbytes: SizeT) -> SSSizeT;
    fn write(__fd: i32, __buf: *const std::ffi::c_void, __n: SizeT) -> SSSizeT;
    fn pread(__fd: i32, __buf: *mut std::ffi::c_void, __nbytes: SizeT, __offset: OffT) -> SSSizeT;
    fn pwrite(__fd: i32, __buf: *const std::ffi::c_void, __n: SizeT, __offset: OffT) -> SSSizeT;
    fn pread64(__fd: i32, __buf: *mut std::ffi::c_void, __nbytes: SizeT, __offset: Off64T) -> SSSizeT;
    fn pwrite64(__fd: i32, __buf: *const std::ffi::c_void, __n: SizeT, __offset: Off64T) -> SSSizeT;
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
    fn pathconf(__path: *const i8, __name: i32) -> i64;
    fn fpathconf(__fd: i32, __name: i32) -> i64;
    fn sysconf(__name: i32) -> i64;
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
    fn readlink(__path: *const i8, __buf: *mut i8, __len: SizeT) -> SSSizeT;
    fn symlinkat(__from: *const i8, __tofd: i32, __to: *const i8) -> i32;
    fn readlinkat(__fd: i32, __path: *const i8, __buf: *mut i8, __len: SizeT) -> SSSizeT;
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
    fn profil(__sample_buffer: *mut u16, __size: SizeT, __offset: SizeT, __scale: u32) -> i32;
    fn acct(__name: *const i8) -> i32;
    fn getusershell() -> *mut i8;
    fn endusershell();
    fn setusershell();
    fn daemon(__nochdir: i32, __noclose: