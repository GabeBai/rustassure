```rust
type PtrdiffT = i64;
type SizeT = u64;
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
type __IntmaxT = i64;
type __UIntmaxT = u64;
type __DevT = u64;
type __UidT = u32;
type __GidT = u32;
type __InoT = u64;
type __Ino64T = u64;
type __ModeT = u32;
type __NlinkT = u64;
type __OffT = i64;
type __Off64T = i64;
type __PidT = i32;

#[repr(C)]
struct __FsidT {
    __val: [i32; 2],
}

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
type __SyscallSlongT = i64;
type __SyscallUlongT = u64;
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
type NlinkT = __NlinkT;
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
type Ulong = u64;
type Ushort = u16;
type Uint = u32;
type Int8T = __Int8T;
type Int16T = __Int16T;
type Int32T = __Int32T;
type Int64T = __Int64T;
type UInt8T = __UInt8T;
type UInt16T = __UInt16T;
type UInt32T = __UInt32T;
type UInt64T = __UInt64T;

#[repr(C)]
union PthreadAttrT {
    __size: [i8; 56],
    __align: i64,
}

type PthreadT = u64;

#[repr(C)]
union PthreadMutexAttrT {
    __size: [i8; 4],
    __align: i32,
}

#[repr(C)]
union PthreadCondAttrT {
    __size: [i8; 4],
    __align: i32,
}

type PthreadKeyT = u32;
type PthreadOnceT = i32;

#[repr(C)]
union PthreadMutexT {
    __data: __pthread_mutex_s,
    __size: [i8; 40],
    __align: i64,
}

#[repr(C)]
union PthreadCondT {
    __data: __pthread_cond_s,
    __size: [i8; 48],
    __align: i64,
}

#[repr(C)]
union PthreadRwlockT {
    __data: __pthread_rwlock_arch_t,
    __size: [i8; 56],
    __align: i64,
}

#[repr(C)]
union PthreadRwlockAttrT {
    __size: [i8; 8],
    __align: i64,
}

type PthreadSpinlockT = i32;

#[repr(C)]
union PthreadBarrierT {
    __size: [i8; 32],
    __align: i64,
}

#[repr(C)]
union PthreadBarrierAttrT {
    __size: [i8; 4],
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
    fn read(__fd: i32, __buf: *mut core::ffi::c_void, __nbytes: SizeT) -> SsizeT;
    fn write(__fd: i32, __buf: *const core::ffi::c_void, __n: SizeT) -> SsizeT;
    fn pread(__fd: i32, __buf: *mut core::ffi::c_void, __nbytes: SizeT, __offset: __OffT) -> SsizeT;
    fn pwrite(__fd: i32, __buf: *const core::ffi::c_void, __n: SizeT, __offset: __OffT) -> SsizeT;
    fn pread64(__fd: i32, __buf: *mut core::ffi::c_void, __nbytes: SizeT, __offset: __Off64T) -> SsizeT;
    fn pwrite64(__fd: i32, __buf: *const core::ffi::c_void, __n: SizeT, __offset: __Off64T) -> SsizeT;
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
    fn execve(__path: *const i8, __argv: *const *mut i8, __envp: *const *mut i8) -> i32;
    fn fexecve(__fd: i32, __argv: *const *mut i8, __envp: *const *mut i8) -> i32;
    fn execv(__path: *const i8, __argv: *const *mut i8) -> i32;
    fn execle(__path: *const i8, __arg: *const i8, ...) -> i32;
    fn execl(__path: *const i8, __arg: *const i8, ...) -> i32;
    fn execvp(__file: *const i8, __argv: *const *mut i8) -> i32;
    fn execlp(__file: *const i8, __arg: *const i8, ...) -> i32;
    fn nice(__inc: i32) -> i32;
    fn _exit(__status: i32);
    fn select(__nfds: i32, __readfds: *mut fd_set, __writefds: *mut fd_set, __exceptfds: *mut fd_set, __timeout: *mut timeval) -> i32;
    fn pselect(__nfds: i32, __readfds: *mut fd_set, __writefds: *mut fd_set, __exceptfds: *mut fd_set, __timeout: *const timespec, __sigmask: *const __sigset_t) -> i32;
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
    fn readlink(__path: *const i8, __buf: *mut i8, __len: SizeT) -> SsizeT;
    fn symlinkat(__from: *const i8, __tofd: i32, __to: *const i8) -> i32;
    fn readlinkat(__fd: i32, __path: *const i8, __buf: *mut i8, __len: SizeT) -> SsizeT;
    fn unlink(__name: *const i8) -> i32;
    fn unlinkat(__fd: i32, __name: *const i8, __flag: i32) -> i32;
    fn rmdir(__path: *const i8) -> i32;
    fn tcgetpgrp(__fd: i32) -> __PidT;
    fn tcsetpgrp(__fd: i32, __pgrp_id: __PidT) -> i32;
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
    fn daemon(__nochdir: i32, __noclose: i32) -> i32;
    fn chroot(__path: *const i8) -> i32;
    fn getpass(__prompt: *const i8) -> *mut i8;
    fn fsync(__fd: i32) -> i32;
    fn gethostid() -> i64;
    fn sync();
    fn getpagesize() -> i32;
    fn getdtablesize() -> i32;
    fn truncate(__file: *const i8, __length: __OffT) -> i32;
    fn truncate64(__file: *const i8, __length: __Off64T) -> i32;
    fn ftruncate(__fd: i32, __length: __OffT) -> i32;
    fn ftruncate64(__fd: i32, __length: __Off64T) -> i32;
    fn brk(__addr: *mut core::ffi::c_void) -> i32;
    fn sbrk(__delta: IntptrT) -> *mut core::ffi::c_void;
    fn syscall(__sysno: i64, ...) -> i64;
    fn lockf(__fd: i32, __cmd: i32, __len: __OffT) -> i32;
    fn lockf64(__fd: i32, __cmd: i32, __len: __Off64T) -> i32;
    fn fdatasync(__fildes: i32) -> i32;
    fn crypt(__key: *const i8, __salt: *const i8) -> *mut i8;
    fn getentropy(__buffer: *mut core::ffi::c_void, __length: SizeT) -> i32;
    fn memcpy(__dest: *mut core::ffi::c_void, __src: *const core::ffi::c_void, __n: SizeT) -> *mut core::ffi::c_void;
    fn memmove(__dest: *mut core::ffi::c_void, __src: *const core::ffi::c_void, __n: SizeT) -> *mut core::ffi::c_void;
    fn memccpy(__dest: *mut core::ffi::c_void, __src: *const core::ffi::c_void, __c: i32, __n: SizeT) -> *mut core::ffi::c_void;
    fn memset(__s: *mut core::ffi::c_void, __c: i32, __n: SizeT) -> *mut core::ffi::c_void;
    fn memcmp(__s1: *const core::ffi::c_void, __s2: *const core::ffi::c_void, __n: SizeT) -> i32;
    fn __memcmpeq(__s1: