type SizeT = usize;
type UInt16 = u16;
type OffT = isize;
type Off64T = i64;

struct IOFile;

type FILE = IOFile;

struct IOFile {
    flags: i32,
    read_ptr: *mut char,
    read_end: *mut char,
    read_base: *mut char,
    write_base: *mut char,
    write_ptr: *mut char,
    write_end: *mut char,
    buf_base: *mut char,
    buf_end: *mut char,
    save_base: *mut char,
    backup_base: *mut char,
    save_end: *mut char,
    markers: *mut IOMarker,
    chain: *mut IOFile,
    fileno: i32,
    flags2: i32,
    old_offset: OffT,
    cur_column: u16,
    vtable_offset: i8,
    shortbuf: [char; 1],
    lock: *mut (),
    offset: Off64T,
    codecvt: *mut IOCodecvt,
    wide_data: *mut IOWideData,
    freeres_list: *mut IOFile,
    freeres_buf: *mut (),
    pad5: SizeT,
    mode: i32,
    unused2: [u8; 15 * std::mem::size_of::<i32>() - 4 * std::mem::size_of::<*mut ()>() - std::mem::size_of::<SizeT>()],
}

extern "C" {
    static stdin: *mut FILE;
    static stdout: *mut FILE;
    static stderr: *mut FILE;
}

#[inline]
fn bswap_16(bsx: UInt16) -> UInt16 {
    ((bsx >> 8) & 0xff) as UInt16 | ((bsx & 0xff) << 8) as UInt16
}
