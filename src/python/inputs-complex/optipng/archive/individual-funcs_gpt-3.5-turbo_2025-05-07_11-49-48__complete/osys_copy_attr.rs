use nix::sys::stat::{fstat, Mode, Stat, UtimensatFlags};
use nix::unistd::chown;
use nix::errno::Errno;
use nix::sys::stat::{stat, chmod, utimensat};
use std::ffi::CString;

fn osys_copy_attr(src_path: &str, dest_path: &str) -> Result<(), Errno> {
    let sbuf = match stat(src_path) {
        Ok(s) => s,
        Err(e) => return Err(e),
    };

    if let Err(e) = chown(dest_path, sbuf.st_uid, sbuf.st_gid) {
        return Err(e);
    }

    if let Err(e) = chmod(dest_path, Mode::from_bits_truncate(sbuf.st_mode)) {
        return Err(e);
    }

    let times = [sbuf.st_atim, sbuf.st_mtim];
    if let Err(e) = utimensat(-100, dest_path, &times, UtimensatFlags::empty()) {
        return Err(e);
    }

    Ok(())
}
