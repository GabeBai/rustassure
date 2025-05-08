use std::fs::{self, Metadata};
use std::os::unix::fs::MetadataExt;
use std::time::SystemTime;
use std::io;

fn osys_copy_attr(src_path: &str, dest_path: &str) -> io::Result<()> {
    let metadata = fs::metadata(src_path)?;

    let uid = metadata.uid();
    let gid = metadata.gid();
    let mode = metadata.permissions().mode();

    // Change ownership
    if let Err(e) = nix::unistd::chown(dest_path, Some(nix::unistd::Uid::from_raw(uid)), Some(nix::unistd::Gid::from_raw(gid))) {
        eprintln!("Failed to change ownership: {}", e);
    }

    // Change permissions
    if let Err(e) = fs::set_permissions(dest_path, fs::Permissions::from_mode(mode)) {
        eprintln!("Failed to change permissions: {}", e);
    }

    // Change timestamps
    let accessed = metadata.accessed()?;
    let modified = metadata.modified()?;
    let times = [
        accessed.duration_since(SystemTime::UNIX_EPOCH)?.as_nanos() as i64,
        modified.duration_since(SystemTime::UNIX_EPOCH)?.as_nanos() as i64,
    ];

    // Use `utimensat` equivalent in Rust
    if let Err(e) = utime::set_file_times(dest_path, times[0], times[1]) {
        eprintln!("Failed to change timestamps: {}", e);
    }

    Ok(())
}
