use std::fs;
use std::io;
use std::os::unix::fs::{MetadataExt, PermissionsExt};
use filetime::{FileTime, set_file_times};

fn osys_copy_attr(src_path: &str, dest_path: &str) -> io::Result<()> {
    let src_metadata = fs::metadata(src_path)?;

    // Change ownership
    let uid = src_metadata.uid();
    let gid = src_metadata.gid();
    let _ = nix::unistd::chown(dest_path, Some(nix::unistd::Uid::from_raw(uid)), Some(nix::unistd::Gid::from_raw(gid)));

    // Change permissions
    let permissions = src_metadata.permissions();
    fs::set_permissions(dest_path, permissions)?;

    // Change access and modification times
    let atime = FileTime::from_unix_time(src_metadata.atime(), src_metadata.atime_nsec());
    let mtime = FileTime::from_unix_time(src_metadata.mtime(), src_metadata.mtime_nsec());
    set_file_times(dest_path, atime, mtime)?;

    Ok(())
}
