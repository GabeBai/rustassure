use std::fs;
use std::os::unix::fs::{MetadataExt, PermissionsExt};
use std::path::Path;
use std::io;
use nix::unistd::{chown, Uid, Gid};
use filetime::{set_file_times, FileTime};

fn osys_copy_attr(src_path: &str, dest_path: &str) -> io::Result<()> {
    let src_metadata = fs::metadata(src_path)?;

    // Change ownership
    let uid = Uid::from_raw(src_metadata.uid());
    let gid = Gid::from_raw(src_metadata.gid());
    chown(dest_path, Some(uid), Some(gid)).map_err(|e| io::Error::new(io::ErrorKind::Other, e))?;

    // Change permissions
    let permissions = src_metadata.permissions();
    fs::set_permissions(dest_path, permissions)?;

    // Change access and modification times
    let atime = FileTime::from_unix_time(src_metadata.atime(), src_metadata.atime_nsec());
    let mtime = FileTime::from_unix_time(src_metadata.mtime(), src_metadata.mtime_nsec());
    set_file_times(dest_path, atime, mtime)?;

    Ok(())
}
