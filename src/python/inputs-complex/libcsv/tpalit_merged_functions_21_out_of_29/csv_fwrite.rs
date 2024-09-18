use std::ffi::c_void;
use std::os::raw::c_int;
use std::os::raw::c_ulong;

type FILE = std::ffi::c_void; // Placeholder for FILE type

extern "C" {
    fn csv_fwrite2(fp: *mut FILE, src: *const c_void, src_size: c_ulong, quote: u8) -> c_int;
}

fn csv_fwrite(fp: *mut FILE, src: *const c_void, src_size: c_ulong) -> c_int {
    unsafe {
        csv_fwrite2(fp, src, src_size, 0x22)
    }
}
