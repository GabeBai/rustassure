use std::os::unix::fs::MetadataExt;
use std::fs::{self, File};
use std::os::unix::fs::PermissionsExt;
use std::path::Path;
use std::time::SystemTime;

fn osys_copy_attr(src_path: &str, dest_path: &str) -> std::io::Result<()> {
    let metadata = fs::metadata(src_path)?;
    
    let uid = metadata.uid();
    let gid = metadata.gid();
    let mode = metadata.mode();
    
    chown(dest_path, uid, gid)?;
    fs::set_permissions(dest_path, fs::Permissions::from_mode(mode))?;
    
    let atime = SystemTime::from(metadata.atime());
    let mtime = SystemTime::from(metadata.mtime());
    
    filetime::set_file_times(dest_path, atime, mtime)?;
    
    Ok(())
}

fn chown(path: &str, uid: u32, gid: u32) -> std::io::Result<()> {
    use std::os::unix::fs::chown;
    let path = Path::new(path);
    chown(path, Some(uid), Some(gid))
}