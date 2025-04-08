use std::fs::{self, File};
use std::os::unix::fs::{MetadataExt, PermissionsExt};
use std::io;
use std::path::Path;

fn osys_copy_attr(src_path: &Path, dest_path: &Path) -> io::Result<()> {
    let metadata = fs::metadata(src_path)?;

    // Change ownership
    let uid = metadata.uid();
    let gid = metadata.gid();
    // Note: Rust's standard library does not provide a direct way to change ownership.
    // You would need to use a crate like `nix` for this functionality.

    // Change permissions
    let permissions = metadata.permissions();
    fs::set_permissions(dest_path, permissions)?;

    // Change access and modification times
    let atime = filetime::FileTime::from_unix_time(metadata.atime(), metadata.atime_nsec() as u32);
    let mtime = filetime::FileTime::from_unix_time(metadata.mtime(), metadata.mtime_nsec() as u32);
    filetime::set_file_times(dest_path, atime, mtime)?;

    Ok(())
}

fn main() {
    let src_path = Path::new("source_file");
    let dest_path = Path::new("destination_file");

    match osys_copy_attr(src_path, dest_path) {
        Ok(_) => println!("Attributes copied successfully."),
        Err(e) => eprintln!("Error copying attributes: {}", e),
    }
}
