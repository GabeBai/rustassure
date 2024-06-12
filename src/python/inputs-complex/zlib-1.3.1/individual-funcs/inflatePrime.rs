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
type Bytef = Byte;
type Charf = i8;
type Intf = i32;
type UIntf = UInt;
type ULongf = ULong;
type VoidPc = *const std::ffi::c_void;
type VoidPf = *mut std::ffi::c_void;
type VoidP = *mut std::ffi::c_void;
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
type __QuadT = isize;
type __UQuadT = usize;
type __IntMaxT = isize;
type __UIntMaxT = usize;
type __DevT = usize;
type __UidT = u32;
type __GidT = u32;
type __InoT = usize;
type __Ino64T = usize;
type __ModeT = u32;
type __NLinkT = usize;
type __OffT = isize;
type __Off64T = isize;
type __PidT = i32;

#[repr(C)]
struct __FsidT {
    __val: [i32; 2],
}

type __ClockT = isize;
type __RlimT = usize;
type __Rlim64T = usize;
type __IdT = u32;
type __TimeT = isize;
type __UsecondsT = u32;
type __SUsecondsT = isize;
type __SUseconds64T = isize;
type __DaddrT = i32;
type __KeyT = i32;
type __ClockidT = i32;
type __TimerT = *mut std::ffi::c_void;
type __BlkSizeT = isize;
type __BlkCntT = isize;
type __BlkCnt64T = isize;
type __FsBlkCntT = usize;
type __FsBlkCnt64T = usize;
type __FsFilCntT = usize;
type __FsFilCnt64T = usize;
type __FsWordT = isize;
type __SSizeT = isize;
type __SyscallSLongT = isize;
type __SyscallULongT = usize;
type __LoffT = __Off64T;
type __CAddrT = *mut i8;
type __IntPtrT = isize;
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

#[repr(C)]
struct __SigSetT {
    __val: [u64; 1024 / (8 * std::mem::size_of::<u64>())],
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
type __FdMask = isize;

#[repr(C)]
struct FdSet {
    __fds_bits: [__FdMask; 1024 / (8 * std::mem::size_of::<__FdMask>())],
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
    __value32: __Value32,
}

#[repr(C)]
struct __Value32 {
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
struct __PthreadInternalSList {
    __next: *mut __PthreadInternalSList,
}

type __PthreadSListT = __PthreadInternalSList;

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
    __align: isize,
}

#[repr(C)]
union PthreadMutexT {
    __data: __PthreadMutexS,
    __size: [u8; 40],
    __align: isize,
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
    __align: isize,
}

#[repr(C)]
union PthreadRwlockAttrT {
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
union PthreadBarrierAttrT {
    __size: [u8; 4],
    __align: i32,
}

type __BuiltinVaList = std::ffi::VaListImpl;
type __GnucVaList = std::ffi::VaListImpl;
type UsecondsT = __UsecondsT;
type IntPtrT = __IntPtrT;
type SockLenT = __SockLenT;

extern "C" {
    fn access(__name: *const i8, __type: i32) -> i32;
    fn faccessat(__fd: i32, __file: *const i8, __type: i32, __flag: i32) -> i32;
    fn lseek(__fd: i32, __offset: __OffT, __whence: i32) -> __OffT;
    fn lseek64(__fd: i32, __offset: __Off64T, __whence: i32) -> __Off64T;
    fn close(__fd: i32) -> i32;
    fn closefrom(__lowfd: i32);
    fn read(__fd: i32, __buf: *mut std::ffi::c_void, __nbytes: SizeT) -> SSizeT;
    fn write(__fd: i32, __buf: *const std::ffi::c_void, __n: SizeT) -> SSizeT;
    fn pread(__fd: i32, __buf: *mut std::ffi::c_void, __nbytes: SizeT, __offset: __OffT) -> SSizeT;
    fn pwrite(__fd: i32, __buf: *const std::ffi::c_void, __n: SizeT, __offset: __OffT) -> SSizeT;
    fn pread64(__fd: i32, __buf: *mut std::ffi::c_void, __nbytes: SizeT, __offset: __Off64T) -> SSizeT;
    fn pwrite64(__fd: i32, __buf: *const std::ffi::c_void, __n: SizeT, __offset: __Off64T) -> SSizeT;
    fn pipe(__pipedes: *mut i32) -> i32;
    fn alarm(__seconds: u32) -> u32;
    fn sleep(__seconds: u32) -> u32;
    fn ualarm(__value: __UsecondsT, __interval: __UsecondsT) -> __UsecondsT;
    fn usleep(__useconds: __UsecondsT) -> i32;
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
    fn execve(__path: *const i8, __argv: *const *mut i8, __envp: *const *mut i8) -> i32;
    fn fexecve(__fd: i32, __argv: *const *mut i8, __envp: *const *mut i8) -> i32;
    fn execv(__path: *const i8, __argv: *const *mut i8) -> i32;
    fn execle(__path: *const i8, __arg: *const i8, ...) -> i32;
    fn execl(__path: *const i8, __arg: *const i8, ...) -> i32;
    fn execvp(__file: *const i8, __argv: *const *mut i8) -> i32;
    fn execlp(__file: *const i8, __arg: *const i8, ...) -> i32;
    fn nice(__inc: i32) -> i32;
    fn _exit(__status: i32) -> !;
    fn pathconf(__path: *const i8, __name: i32) -> isize;
    fn fpathconf(__fd: i32, __name: i32) -> isize;
    fn sysconf(__name: i32) -> isize;
    fn confstr(__name: i32, __buf: *mut i8, __len: SizeT) -> SizeT;
    fn getpid() -> __PidT;
    fn getppid() -> __PidT;
    fn getpgrp() -> __PidT;
    fn __getpgid(__pid: __PidT) -> __PidT;
    fn getpgid(__pid: __PidT) -> __PidT;
    fn setpgid(__pid: __PidT, __pgid: __PidT) -> i32;
    fn setpgrp() -> i32;
    fn setsid() -> __PidT;
    fn getsid(__pid: __PidT) -> __PidT;
    fn getuid() -> __UidT;
    fn geteuid() -> __UidT;
    fn getgid() -> __GidT;
    fn getegid() -> __GidT;
    fn getgroups(__size: i32, __list: *mut __GidT) -> i32;
    fn setuid(__uid: __UidT) -> i32;
    fn setreuid(__ruid: __UidT, __euid: __UidT) -> i32;
    fn seteuid(__uid: __UidT) -> i32;
    fn setgid(__gid: __GidT) -> i32;
    fn setregid(__rgid: __GidT, __egid: __GidT) -> i32;
    fn setegid(__gid: __GidT) -> i32;
    fn fork() -> __PidT;
    fn vfork() -> __PidT;
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
    fn tcgetpgrp(__fd: i32) -> __PidT;
    fn tcsetpgrp(__fd: i32, __pgrp_id: __PidT) -> i32;
    fn getlogin() -> *mut i8;
    fn getlogin_r(__name: *mut i8, __