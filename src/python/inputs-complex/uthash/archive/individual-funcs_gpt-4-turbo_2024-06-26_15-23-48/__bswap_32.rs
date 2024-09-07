type SizeT = usize;
type UInt32 = u32;
type OffT = i64;
type Off64T = i64;

use std::os::raw::{c_int, c_char};
use std::ptr::NonNull;

struct IOFile {
    flags: c_int,
    read_ptr: *mut c_char,
    read_end: *mut c_char,
    read_base: *mut c_char,
    write_base: *mut c_char,
    write_ptr: *mut c_char,
    write_end: *mut c_char,
    buf_base: *mut c_char,
    buf_end: *mut c_char,
    save_base: *mut c_char,
    backup_base: *mut c_char,
    save_end: *mut c_char,
    markers: *mut IOMarker,
    chain: *mut IOFile,
    fileno: c_int,
    flags2: c_int,
    old_offset: OffT,
    cur_column: u16,
    vtable_offset: i8,
    shortbuf: [c_char; 1],
    lock: *mut (),
    offset: Off64T,
    codecvt: *mut IOCodecvt,
    wide_data: *mut IOWideData,
    freeres_list: *mut IOFile,
    freeres_buf: *mut c_void,
    pad5: SizeT,
    mode: c_int,
    unused2: [u8; 15 * std::mem::size_of::<c_int>() - 4 * std::mem::size_of::<*mut c_void>() - std::mem::size_of::<SizeT>()],
}

extern "C" {
    static stdin: *mut IOFile;
    static stdout: *mut IOFile;
    static stderr: *mut IOFile;
}

#[inline]
fn bswap_32(x: UInt32) -> UInt32 {
    ((x & 0xff000000) >> 24) |
    ((x & 0x00ff0000) >> 8) |
    ((x & 0x0000ff00) << 8) |
    ((x & 0x000000ff) << 24)
}
