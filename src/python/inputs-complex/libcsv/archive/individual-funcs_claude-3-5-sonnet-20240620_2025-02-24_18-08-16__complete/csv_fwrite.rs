use std::os::raw::c_int;
use std::ffi::c_void;
use libc::FILE;
use libc::size_t;

#[no_mangle]
pub extern "C" fn csv_fwrite(fp: *mut FILE, src: *const c_void, src_size: size_t) -> c_int {
    csv_fwrite2(fp, src, src_size, 0x22)
}