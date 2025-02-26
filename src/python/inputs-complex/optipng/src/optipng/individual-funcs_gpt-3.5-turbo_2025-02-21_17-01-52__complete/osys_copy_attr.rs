use std::ffi::CString;
use std::fs;
use std::os::unix::fs::PermissionsExt;
use std::os::unix::fs::MetadataExt;
use std::os::raw::c_int;
use libc::{timespec, utimensat};

fn osys_copy_attr(src_path: &str, dest_path: &str) -> Result<(), std::io::Error> {
    let sbuf = fs::metadata(src_path)?;
    
    if let Err(_) = fs::symlink_metadata(dest_path) {
        return Err(std::io::Error::new(std::io::ErrorKind::NotFound, "Destination path not found"));
    }

    let uid = sbuf.uid();
    let gid = sbuf.gid();
    let mode = sbuf.permissions().mode();

    if let Err(_) = fs::set_permissions(dest_path, fs::Permissions::from_mode(mode)) {
        return Err(std::io::Error::new(std::io::ErrorKind::PermissionDenied, "Failed to set permissions"));
    }

    let atime_spec = timespec {
        tv_sec: sbuf.atime(),
        tv_nsec: sbuf.atime_nsec() as _,
    };

    let mtime_spec = timespec {
        tv_sec: sbuf.mtime(),
        tv_nsec: sbuf.mtime_nsec() as _,
    };

    let times = [atime_spec, mtime_spec];

    let dest_path_c = CString::new(dest_path).expect("CString conversion failed");

    let result = unsafe {
        utimensat(
            c_int::from(-2),
            dest_path_c.as_ptr(),
            times.as_ptr(),
            0,
        )
    };

    if result != 0 {
        return Err(std::io::Error::last_os_error());
    }

    Ok(())
}
