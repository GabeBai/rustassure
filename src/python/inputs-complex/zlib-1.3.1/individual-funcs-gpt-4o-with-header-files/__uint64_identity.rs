type PtrDiffT = isize;
type SizeT = usize;
type WCharT = i32;

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
type USecondsT = u32;
type SUsecondsT = i64;
type SUseconds64T = i64;
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
type SSizeT = i64;
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
type FsidT = [i32; 2];
type LOffT = Off64T;
type InoT = u64;
type Ino64T = u64;
type DevT = u64;
type GidT = u32;
type ModeT = u32;
type NLinkT = u64;
type UidT = u32;
type OffT = i64;
type Off64T = i64;
type PidT = i32;
type IdT = u32;
type SSizeT = i64;
type DAddrT = i32;
type CAddrT = *mut i8;
type KeyT = i32;
type ClockT = i64;
type ClockIdT = i32;
type TimeT = i64;
type TimerT = *mut std::ffi::c_void;
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

#[inline]
fn uint64_identity(x: u64) -> u64 {
    x
}