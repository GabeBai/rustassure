type PtrdiffT = isize;
type SizeT = usize;
type WcharT = i32;

#[repr(align(8))]
struct MaxAlignT {
    __clang_max_align_nonce1: i64,
}

#[repr(align(16))]
struct MaxAlignT2 {
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
type IntmaxT = isize;
type UIntmaxT = usize;
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
type FsidT = [i32; 2];
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
type TimerT = *mut core::ffi::c_void;
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
type LoffT = isize;
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
type FsidT = [i32; 2];
type LoffT = isize;
type InoT = usize;
type Ino64T = usize;
type DevT = usize;
type GidT = u32;
type ModeT = u32;
type NlinkT = usize;
type UidT = u32;
type OffT = isize;
type Off64T = isize;
type PidT = i32;
type IdT = u32;
type SsizeT = isize;
type DaddrT = i32;
type CaddrT = *mut i8;
type KeyT = i32;
type ClockT = isize;
type ClockidT = i32;
type TimeT = isize;
type TimerT = *mut core::ffi::c_void;
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

#[inline]
fn __bswap_32(__bsx: u32) -> u32 {
    ((__bsx & 0xff000000) >> 24) | ((__bsx & 0x00ff0000) >> 8) | ((__bsx & 0x0000ff00) << 8) | ((__bsx & 0x000000ff) << 24)
}