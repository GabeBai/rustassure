#![allow(unaligned_references)]
use std::fs;
use std::os::unix::fs::{MetadataExt, PermissionsExt};
use std::os::unix::io::AsRawFd;
use std::time::{SystemTime, UNIX_EPOCH};
use std::io;

#[no_mangle]
#[no_mangle]
fn osys_copy_attr(src_path: &str, dest_path: &str) -> io::Result<()> {
    // Get metadata of the source file
    let metadata = fs::metadata(src_path)?;

    // Change ownership of the destination file
    let uid = metadata.uid();
    let gid = metadata.gid();
    let dest_file = fs::OpenOptions::new().write(true).open(dest_path)?;
    let dest_fd = dest_file.as_raw_fd();
    unsafe {
        libc::fchown(dest_fd, uid, gid);
    }

    // Change permissions of the destination file
    let mode = metadata.mode();
    fs::set_permissions(dest_path, fs::Permissions::from_mode(mode))?;

    // Update the access and modification times
    let atime = metadata.atime();
    let mtime = metadata.mtime();
    let times = [
        libc::timespec {
            tv_sec: atime,
            tv_nsec: 0,
        },
        libc::timespec {
            tv_sec: mtime,
            tv_nsec: 0,
        },
    ];
    unsafe {
        libc::utimensat(libc::AT_FDCWD, dest_path.as_ptr() as *const i8, times.as_ptr(), 0);
    }

    Ok(())
}

#[no_mangle]
#[no_mangle]
fn main() {
    match osys_copy_attr("source.txt", "destination.txt") {
        Ok(_) => println!("Attributes copied successfully."),
        Err(e) => eprintln!("Error copying attributes: {}", e),
    }
}
