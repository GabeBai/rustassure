use std::ffi::CString;
use std::fs;
use std::os::unix::fs::MetadataExt;
use std::os::unix::fs::PermissionsExt;
use std::os::unix::fs::OpenOptionsExt;
use std::os::unix::io::AsRawFd;
use std::os::raw::c_long;
use std::time::{SystemTime, UNIX_EPOCH};

fn osys_copy_attr(src_path: &str, dest_path: &str) -> Result<(), std::io::Error> {
    let sbuf = fs::metadata(src_path)?;
    
    if let Err(_) = fs::set_permissions(dest_path, sbuf.permissions()) {
        return Err(std::io::Error::new(std::io::ErrorKind::Other, "Failed to set permissions"));
    }

    let dest_file = fs::OpenOptions::new().write(true).open(dest_path)?;
    let dest_fd = dest_file.as_raw_fd();

    let times = [
        libc::timespec {
            tv_sec: sbuf.atime(),
            tv_nsec: sbuf.atime_nsec() as c_long,
        },
        libc::timespec {
            tv_sec: sbuf.mtime(),
            tv_nsec: sbuf.mtime_nsec() as c_long,
        },
    ];

    if unsafe { libc::utimensat(-100, CString::new(dest_path).unwrap().as_ptr(), times.as_ptr(), 0) } != 0 {
        return Err(std::io::Error::new(std::io::ErrorKind::Other, "Failed to set file times"));
    }

    Ok(())
}
