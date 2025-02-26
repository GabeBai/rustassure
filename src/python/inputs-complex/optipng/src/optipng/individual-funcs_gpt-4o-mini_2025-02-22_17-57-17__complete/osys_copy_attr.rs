use std::fs::{self, Metadata};
use std::io;
use std::os::unix::fs::MetadataExt;
use std::time::{SystemTime, UNIX_EPOCH};
use std::os::unix::fs::FileTypeExt;

fn osys_copy_attr(src_path: &str, dest_path: &str) -> Result<(), io::Error> {
    // Get metadata from the source file
    let metadata = fs::metadata(src_path)?;

    // Change ownership of the destination file
    let uid = metadata.uid();
    let gid = metadata.gid();
    if let Err(e) = nix::unistd::chown(dest_path, Some(uid), Some(gid)) {
        eprintln!("Failed to change ownership: {}", e);
    }

    // Change permissions of the destination file
    let mode = metadata.mode();
    if let Err(e) = fs::set_permissions(dest_path, fs::Permissions::from_mode(mode)) {
        eprintln!("Failed to change permissions: {}", e);
    }

    // Set access and modification times
    let atime = metadata.accessed()?.duration_since(UNIX_EPOCH)?.as_secs() as i64;
    let mtime = metadata.modified()?.duration_since(UNIX_EPOCH)?.as_secs() as i64;

    let times = [libc::timespec { tv_sec: atime, tv_nsec: 0 }, 
                 libc::timespec { tv_sec: mtime, tv_nsec: 0 }];

    // Use `nix` crate for `utimensat` equivalent
    if let Err(e) = nix::fcntl::utimensat(None, dest_path, &times, 0) {
        eprintln!("Failed to set times: {}", e);
    }

    Ok(())
}
