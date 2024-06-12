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
type RlimT = u64;
type Rlim64T = u64;
type IdT = u32;
type TimeT = i64;
type UsecondsT = u32;
type SusecondsT = i64;
type Suseconds64T = i64;
type DAddrT = i32;
type KeyT = i32;
type ClockidT = i32;
type TimerT = *mut std::ffi::c_void;
type BlksizeT = i64;
type BlkcntT = i64;
type Blkcnt64T = i64;
type FsblkcntT = u64;
type Fsblkcnt64T = u64;
type FsfilcntT = u64;
type Fsfilcnt64T = u64;
type FswordT = i64;
type SsizeT = i64;
type SyscallSLongT = i64;
type SyscallULongT = u64;
type LoffT = Off64T;
type CaddrT = *mut i8;
type IntptrT = isize;
type SocklenT = u32;
type SigAtomicT = i32;
type UChar = u8;
type UShort = u16;
type UInt = u32;
type ULong = u64;
type QuadT = i64;
type UQuadT = u64;
type FsidT = FsidT;
type LoffT = LoffT;
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
type SsizeT = SsizeT;
type DAddrT = DAddrT;
type CaddrT = CaddrT;
type KeyT = KeyT;
type ClockT = ClockT;
type ClockidT = ClockidT;
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
type RegisterT = isize;

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
    tv_nsec: SyscallSLongT,
}

type SusecondsT = SusecondsT;
type FdMask = i64;

#[repr(C)]
struct FdSet {
    __fds_bits: [FdMask; 1024 / (8 * std::mem::size_of::<FdMask>())],
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
union PthreadRwlockT {
    __data: PthreadRwlockArchT,
    __size: [u8; 56],
    __align: i64,
}

#[repr(C)]
union PthreadRwlockAttrT {
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
union PthreadBarrierAttrT {
    __size: [u8; 4],
    __align: i32,
}

type VaList = std::ffi::VaList;
type GnucVaList = std::ffi::VaList;
type UsecondsT = UsecondsT;
type IntptrT = IntptrT;
type SocklenT = SocklenT;

extern "C" {
    fn access(name: *const i8, type_: i32) -> i32;
    fn faccessat(fd: i32, file: *const i8, type_: i32, flag: i32) -> i32;
    fn lseek(fd: i32, offset: OffT, whence: i32) -> OffT;
    fn lseek64(fd: i32, offset: Off64T, whence: i32) -> Off64T;
    fn close(fd: i32) -> i32;
    fn closefrom(lowfd: i32);
    fn read(fd: i32, buf: *mut std::ffi::c_void, nbytes: SizeT) -> SsizeT;
    fn write(fd: i32, buf: *const std::ffi::c_void, n: SizeT) -> SsizeT;
    fn pread(fd: i32, buf: *mut std::ffi::c_void, nbytes: SizeT, offset: OffT) -> SsizeT;
    fn pwrite(fd: i32, buf: *const std::ffi::c_void, n: SizeT, offset: OffT) -> SsizeT;
    fn pread64(fd: i32, buf: *mut std::ffi::c_void, nbytes: SizeT, offset: Off64T) -> SsizeT;
    fn pwrite64(fd: i32, buf: *const std::ffi::c_void, n: SizeT, offset: Off64T) -> SsizeT;
    fn pipe(pipedes: *mut i32) -> i32;
    fn alarm(seconds: u32) -> u32;
    fn sleep(seconds: u32) -> u32;
    fn ualarm(value: UsecondsT, interval: UsecondsT) -> UsecondsT;
    fn usleep(useconds: UsecondsT) -> i32;
    fn pause() -> i32;
    fn chown(file: *const i8, owner: UidT, group: GidT) -> i32;
    fn fchown(fd: i32, owner: UidT, group: GidT) -> i32;
    fn lchown(file: *const i8, owner: UidT, group: GidT) -> i32;
    fn fchownat(fd: i32, file: *const i8, owner: UidT, group: GidT, flag: i32) -> i32;
    fn chdir(path: *const i8) -> i32;
    fn fchdir(fd: i32) -> i32;
    fn getcwd(buf: *mut i8, size: SizeT) -> *mut i8;
    fn getwd(buf: *mut i8) -> *mut i8;
    fn dup(fd: i32) -> i32;
    fn dup2(fd: i32, fd2: i32) -> i32;
    fn execve(path: *const i8, argv: *const *const i8, envp: *const *const i8) -> i32;
    fn fexecve(fd: i32, argv: *const *const i8, envp: *const *const i8) -> i32;
    fn execv(path: *const i8, argv: *const *const i8) -> i32;
    fn execle(path: *const i8, arg: *const i8, ...) -> i32;
    fn execl(path: *const i8, arg: *const i8, ...) -> i32;
    fn execvp(file: *const i8, argv: *const *const i8) -> i32;
    fn execlp(file: *const i8, arg: *const i8, ...) -> i32;
    fn nice(inc: i32) -> i32;
    fn _exit(status: i32) -> !;
    fn pathconf(path: *const i8, name: i32) -> isize;
    fn fpathconf(fd: i32, name: i32) -> isize;
    fn sysconf(name: i32) -> isize;
    fn confstr(name: i32, buf: *mut i8, len: SizeT) -> SizeT;
    fn getpid() -> PidT;
    fn getppid() -> PidT;
    fn getpgrp() -> PidT;
    fn __getpgid(pid: PidT) -> PidT;
    fn getpgid(pid: PidT) -> PidT;
    fn setpgid(pid: PidT, pgid: PidT) -> i32;
    fn setpgrp() -> i32;
    fn setsid() -> PidT;
    fn getsid(pid: PidT) -> PidT;
    fn getuid() -> UidT;
    fn geteuid() -> UidT;
    fn getgid() -> GidT;
    fn getegid() -> GidT;
    fn getgroups(size: i32, list: *mut GidT) -> i32;
    fn setuid(uid: UidT) -> i32;
    fn setreuid(ruid: UidT, euid: UidT) -> i32;
    fn seteuid(uid: UidT) -> i32;
    fn setgid(gid: GidT) -> i32;
    fn setregid(rgid: GidT, egid: GidT) -> i32;
    fn setegid(gid: GidT) -> i32;
    fn fork() -> PidT;
    fn vfork() -> PidT;
    fn ttyname(fd: i32) -> *mut i8;
    fn ttyname_r(fd: i32, buf: *mut i8, buflen: SizeT) -> i32;
    fn isatty(fd: i32) -> i32;
    fn ttyslot() -> i32;
    fn link(from: *const i8, to: *const i8) -> i32;
    fn linkat(fromfd: i32, from: *const i8, tofd: i32, to: *const i8, flags: i32) -> i32;
    fn symlink(from: *const i8, to: *const i8) -> i32;
    fn readlink(path: *const i8, buf: *mut i8, len: SizeT) -> SsizeT;
    fn symlinkat(from: *const i8, tofd: i32, to: *const i8) -> i32;
    fn readlinkat(fd: i32, path: *const i8, buf: *mut i8, len: SizeT) -> SsizeT;
    fn unlink(name: *const i8) -> i32;
    fn unlinkat(fd: i32, name: *const i8, flag: i32) -> i32;
    fn rmdir(path: *const i8) -> i32;
    fn tcgetpgrp(fd: i32) -> PidT;
    fn tcsetpgrp(fd: i32, pgrp_id: PidT) -> i32;
    fn getlogin() -> *mut i8;
    fn getlogin_r(name: *mut i8, name_len: SizeT) -> i32;
    fn setlogin(name: *const i8) -> i32;
    fn gethostname(name: *mut i8, len: SizeT) -> i32;
    fn sethostname(name: *const i8, len: SizeT) -> i32;
    fn sethostid(id: i64) -> i32;
    fn getdomainname(name: *mut i8, len: SizeT) -> i32;
    fn setdomainname(name: *const i8, len: SizeT) -> i32;
    fn vhangup() -> i32;
    fn revoke(file: *const i8) -> i32;
    fn profil(sample_buffer: *mut u16, size: SizeT, offset: SizeT, scale: u32) -> i32;
    fn acct(name: *const i8) -> i32;
    fn getusershell() -> *mut i8;
    fn endusershell();
    fn setusershell();
    fn daemon(nochdir: i32, noclose: i32) -> i32;
    fn chroot(path: *const i8) -> i32;
    fn getpass(prompt: *const i8) -> *mut i8;
    fn fsync(fd: i32) -> i32;
    fn gethostid() -> i64;
    fn sync();
    fn getpagesize() -> i32;
    fn getdtablesize() -> i32;
    fn truncate(file: *const i8, length: OffT) -> i32;
    fn truncate64(file: *const i8, length: Off64T) -> i32;
    fn ftruncate(fd: i32, length: OffT) -> i32;
    fn ftruncate64(fd: i32, length: Off64T) -> i32;
    fn brk(addr: *mut std::ffi::c_void) -> i32;
    fn sbrk(delta: IntptrT) -> *mut std::ffi::c_void;
    fn syscall(sysno: i64, ...) -> i64;
    fn lockf(fd: i32, cmd: i32, len: OffT) -> i32;
    fn lockf64