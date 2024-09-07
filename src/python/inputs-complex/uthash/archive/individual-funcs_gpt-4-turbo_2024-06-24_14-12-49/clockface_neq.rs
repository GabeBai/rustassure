type SizeT = usize;
type VaList = std::ffi::VaList;
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
type IntmaxT = i64;
type UIntmaxT = u64;
type DevT = u64;
type UidT = u32;
type GidT = u32;
type InoT = u64;
type ModeT = u32;
type NlinkT = u64;
type OffT = i64;
type Off64T = i64;
type PidT = i32;
type FsIdT = (i32, i32);
type ClockT = i64;
type IdT = u32;
type TimeT = i64;
type SusecondsT = i64;
type DaddrT = i32;
type KeyT = i32;
type ClockIdT = i32;
type TimerT = *mut std::ffi::c_void;
type BlkSizeT = i64;
type BlkCntT = i64;
type FsBlkCntT = u64;
type FsFilCntT = u64;
type SSizeT = i64;
type SyscallSlongT = i64;
type LoffT = Off64T;
type CaddrT = *mut i8;
struct MbStateT {
    count: i32,
    value: [u8; 4],
}
struct FPosT {
    pos: OffT,
    state: MbStateT,
}
type File = _IOFile;
struct _IOFile {
    flags: i32,
    read_ptr: *mut i8,
    read_end: *mut i8,
    read_base: *mut i8,
    write_base: *mut i8,
    write_ptr: *mut i8,
    write_end: *mut i8,
    buf_base: *mut i8,
    buf_end: *mut i8,
    save_base: *mut i8,
    backup_base: *mut i8,
    save_end: *mut i8,
    markers: *mut _IOMarker,
    chain: *mut _IOFile,
    fileno: i32,
    flags2: i32,
    old_offset: OffT,
    cur_column: u16,
    vtable_offset: i8,
    shortbuf: [i8; 1],
    lock: *mut IOlockT,
    offset: Off64T,
    codecvt: *mut _IOCodecvt,
    wide_data: *mut _IOWideData,
    freeres_list: *mut _IOFile,
    freeres_buf: *mut std::ffi::c_void,
    pad5: usize,
    mode: i32,
    unused2: [u8; 15 * std::mem::size_of::<i32>() - 4 * std::mem::size_of::<*mut std::ffi::c_void>() - std::mem::size_of::<usize>()],
}
type IOlockT = ();
struct _IOMarker;
struct _IOCodecvt;
struct _IOWideData;
